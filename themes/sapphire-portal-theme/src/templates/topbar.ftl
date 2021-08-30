<#assign portalURL = themeDisplay.getURLPortal()>
<#assign currentURL = themeDisplay.getURLCurrent()>
<#assign fullURL = portalURL + "/group">

<div class="commerce-topbar minium-topbar aes-nav">

	<div class="minium-topbar__start-aes col-5">
		<a href="${fullURL}">
			<img src="${themeDisplay.getPathThemeImages()}/aes-logo9.svg" class="aes-logo"/>
		</a>
	</div>
	<div class="minium-topbar__middle-aes col-5">
		<#if back_url?has_content>
			<a class="commerce-topbar-button" href="${htmlUtil.escape(back_url)}">
				<svg class="commerce-icon commerce-topbar-button__icon lexicon-icon lexicon-icon-arrow-back">
					<use href="${themeDisplay.getPathThemeImages()}/icons.svg#arrow-back" />
				</svg>

				<span class="commerce-topbar-button__label">
					${languageUtil.get(locale, "white")}
				</span>
			</a>
		</#if>
		<#if show_search_bar>
			<label class="commerce-topbar-button js-toggle-search" for="commerce-search-input">
				<a class="commerce-icon commerce-topbar-button__icon commerce-topbar-button__icon--not-active lexicon-icon lexicon-icon-search">
					<img src="${themeDisplay.getPathThemeImages()}/search-icon.png" style="height: 1.5em; margin-left: 240px ; margin-top:10px"/>				</a>

				<div class="minium-topbar__search-aes">
					<@liferay_commerce_ui["search-bar"] id="search-bar" />
					<@liferay_commerce_ui["search-results"] />
				</div>
		</#if>
	</div>

	<div class="minium-topbar__end col-2">
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
