<#assign portalURL = themeDisplay.getURLPortal()>
<#assign currentURL = themeDisplay.getURLCurrent()>
<#assign fullURL = portalURL + "/group">

<div class="commerce-topbar minium-topbar">
	<div class="minium-topbar__start col-3">
		<#if back_url?has_content>
			<a class="commerce-topbar-button" href="${htmlUtil.escape(back_url)}">
				<svg class="commerce-icon commerce-topbar-button__icon lexicon-icon lexicon-icon-arrow-back">
					<use href="${themeDisplay.getPathThemeImages()}/icons.svg#arrow-back" />
				</svg>

				<span class="commerce-topbar-button__label">
					${languageUtil.get(locale, "back")}
				</span>
			</a>
		</#if>
		<#if show_search_bar>
			<label class="commerce-topbar-button js-toggle-search" for="commerce-search-input">
				<a class="commerce-icon commerce-topbar-button__icon commerce-topbar-button__icon--not-active lexicon-icon lexicon-icon-search">
					<img src="${themeDisplay.getPathThemeImages()}/icons/search-interface-symbol.png" style="height: 2em"/>
				</a>

				<div class="minium-topbar__search">
					<@liferay_commerce_ui["search-bar"] id="search-bar" />
					<@liferay_commerce_ui["search-results"] />
				</div>
		</#if>
	</div>

	<div class="minium-topbar__middle col-6">
		<a href="${fullURL}">
			<img src="${themeDisplay.getPathThemeImages()}/logos/SapphireGroup_Logo.png" class="top_logo"/>
		</a>
	</div>

	<div class="minium-topbar__end col-3">
		<#if show_account_selector>
			<div class="minium-topbar__account-selector-wrapper">
				<@liferay_commerce_ui["account-selector"] />
			</div>
		</#if>

		<a href="${wishlistUrl}">
			<img src="${themeDisplay.getPathThemeImages()}/icons/heart.png" class="top_icons"/>
		</a>
		
		<#include "${full_templates_path}/new_user_nav.ftl" />

		<#--  <button id="sapphire-cart-opener" class="mini-cart-opener">  -->
			<#--  <img src="${themeDisplay.getPathThemeImages()}/icons/shopping-cart.png" class="top_icons" id="sapphire_cart"/>  -->
		<#--  </button>  -->

		<#if show_mini_cart>
			<div class="minium-topbar__cart-wrapper">
				<@liferay_commerce_ui["mini-cart"]
				displayTotalItemsQuantity=display_total_items_quantity_in_cart
				spritemap="${themeDisplay.getPathThemeImages()}/icons.svg"/>
			</div>
		</#if>
	</div>
</div>
