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
		{l s='Mon compte' mod='okom_vip'}
	</a>
	<span class="navigation-pipe">{$navigationPipe}</span>
	<span class="navigation_page">{l s='Ma carte VIP'}</span>
{/capture}

<h1 class="page-heading bottom-indent">{l s='Ma Carte VIP' mod='okom_vip'}</h1>


{if $is_vip == false && !isset($vip_cards)}

	<div class="well well-sm">
		{l s='Pas encore membre VIP, profitez d\'avantages avec notre carte VIP !' mod='okom_vip'}
		<br/><br/>
		{l s='Livraison Offerte dès 25€' mod='okom_vip'}<br/>
		{l s='Commande prioritaire' mod='okom_vip'}<br/>
		{l s='Des offres de folies réservées aux membres VIP' mod='okom_vip'}<br/><br/>

		<a class="button button-small btn btn-default" href="{$vip_product_url}"><span>{l s='Devenir membre VIP !' mod='okom_vip'}</span></a><br/><br/>

		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='Devenez client Vip' mod='okom_vip'}'>
	</div>

{else if $is_vip == true && $exprired == false}

	<div class="well well-sm">
		<div style="text-align: center"><h3>{l s='Votre carte VIP et avantages expire le' mod='okom_vip'} {$customer_vip['vip_end']}</h3></div>
		Ma/Mes Carte(s) VIP
		<br/><br/>
		{foreach $vip_cards item='vip_card'}

		<li>{if $vip_card.expired == 0}<i class="icon-check"></i>{else}<i class="icon-remove"></i>{/if} Abonnement du {$vip_card.vip_add} au {$vip_card.vip_end}</li>

		{/foreach}	
		<br/><br/>
		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='Vous êtes client VIP' mod='okom_vip'}'>
	</div>

	{else}

	<div class="well well-sm">		
		{l s='Votre abonnement VIP est terminé.' mod='okom_vip'}<br/>
		{l s='Vous pouvez le renouveler dès maintenant.' mod='okom_vip'}
		<br/><br/>
		<a class="button button-small btn btn-default" href="{$vip_product_url}"><span>{l s='Devenir membre VIP !' mod='okom_vip'}</span></a>
		<br/><br/>

		{l s='My old vip Cards' mod='okom_vip'}
		{foreach $vip_cards item='vip_card'}

		<li>{if $vip_card.expired == 0}<i class="icon-check"></i>{else}<i class="icon-remove"></i>{/if} Abonnement du {$vip_card.vip_add} au {$vip_card.vip_end}</li>

		{/foreach}			


		<br/><br/>
		
		<img class="img-responsive" src='{$modules_dir}/okom_vip/img/vip.png' alt='{l s='Abonnement VIP expiré' mod='okom_vip'}'>
	</div>

{/if}
