{*
* Okom3pom
*
* Module Vip Card for Prestashop 1.6.x.x
*
* @author    Okom3pom <contact@okom3pom.com>
* @copyright 2008-2018 Okom3pom
* @license   Free
*}

{capture name=path}
	<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
		{l s='My account' mod='okom_vip'}
	</a>
	<span class="navigation-pipe">{$navigationPipe}</span>
	<span class="navigation_page">{l s='My VIP Card'}</span>
{/capture}

<h1 class="page-heading bottom-indent">{l s='My VIP Card' mod='okom_vip'}</h1>


{if $is_vip == false && !isset($vip_cards)}

	<div class="well well-sm">
		{l s='Not yet a VIP member, enjoy benefits with our VIP card!' mod='okom_vip'}
		<br/><br/>
		{l s='Free Delivery from 25 €' mod='okom_vip'}<br/>
		{l s='Priority order' mod='okom_vip'}<br/>
		{l s='Offers reserved for VIP members' mod='okom_vip'}<br/><br/>

		<a class="button button-small btn btn-default" href="{$vip_product_url}"><span>{l s='Become a VIP member!' mod='okom_vip'}</span></a><br/><br/>

		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='Become a VIP member!' mod='okom_vip'}'>
	</div>

{else if $is_vip == true && $exprired == false}

	<div class="well well-sm">
		<div style="text-align: center"><h3>{l s='Your VIP card and benefits expires on' mod='okom_vip'} {$customer_vip['vip_end']}</h3></div>
		{l s='my VIP card(s)' mod='okom_vip'}
		<br/><br/>
		{foreach $vip_cards item='vip_card'}
		<li>{if $vip_card.expired == 0}<i class="icon-check"></i>{else}<i class="icon-remove"></i>{/if}{l s=' Subscription of ' mod='okom_vip'}{$vip_card.vip_add}{l s=' the ' mod='okom_vip'}{$vip_card.vip_end}</li>
		{/foreach}	
		<br/><br/>
		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='You are a VIP customer' mod='okom_vip'}'>
	</div>

	{else}
	<div class="well well-sm">		
		{l s='Your VIP subscription is complete.' mod='okom_vip'}<br/>
		{l s='You can renew it now.' mod='okom_vip'}
		<br/><br/>
		<a class="button button-small btn btn-default" href="{$vip_product_url}"><span>{l s='Become a VIP member!' mod='okom_vip'}</span></a>
		<br/><br/>
		{l s='My old vip Cards' mod='okom_vip'}
		{foreach $vip_cards item='vip_card'}
		<li>{if $vip_card.expired == 0}<i class="icon-check"></i>{else}<i class="icon-remove"></i>{/if}{l s=' Subscription of ' mod='okom_vip'}{$vip_card.vip_add}{l s=' the ' mod='okom_vip'}{$vip_card.vip_end}</li>
		{/foreach}			
		<br/><br/>
		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='Expired VIP subscription' mod='okom_vip'}'>
	</div>
{/if}
