<!DOCTYPE html>
<#include init />

<#--  Include bootstrap  -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<#--  Finish include bootstrap  -->

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<script type="text/javascript" src="${javascript_folder}/intersection-observer.js"></script>
	<@liferay_util["include"] page=top_head_include />
</head>

<#if is_login_page && redirect_to_private_layouts && themeDisplay.isSignedIn() && themeDisplay.getLayout().isPublicLayout()>

	<#-- Instant redirect, when the page is hit directly or refreshed -->

	<script>
		window.location.replace("${themeDisplay.getPathFriendlyURLPrivateGroup() + themeDisplay.getScopeGroup().getFriendlyURL()}");
	</script>

	<#-- Redirect for Senna (I.E. when you press "Go to Site"). This will cause a flash as the page has to fully load -->

	<@liferay_aui.script>
		window.location.replace("${themeDisplay.getPathFriendlyURLPrivateGroup() + themeDisplay.getScopeGroup().getFriendlyURL()}");
	</@>
</#if>

<#if is_login_page && !themeDisplay.isSignedIn()>
	<#assign css_class = css_class + " minium-login" />
</#if>

<body class="${css_class} sapphire-theme" id="content">
	<@liferay_ui["quick-access"] contentId="#minium" />

    <#if show_dockbar>
	    <@liferay.control_menu />
	</#if>

	<div id="wrapper">
		<div class="liferay-top">
			<@liferay_util["include"] page=body_top_include />
		</div>

		<main class="minium minium-frame" id="minium">
			<#if show_topbar>
					<#if show_dockbar>
							<div class="minium-frame__topbar">
								<#include "${full_templates_path}/topbar.ftl" />
							</div>
					<#else>
							<div class="minium-frame__topbar minimum-top-bar-custom">
									<#include "${full_templates_path}/topbar.ftl" />
							</div>
					</#if>
					<#include "${full_templates_path}/second_topbar.ftl" />
			</#if>

			<div class="minium-frame__content js-scroll-area">
				<a name="minium-top"></a>

				<div class="${minium_content_css_class}">
					<#if selectable>
						<@liferay_util["include"] page=content_include />
					<#else>
						${portletDisplay.recycle()}
						${portletDisplay.setTitle(the_title)}

						<@liferay_theme["wrap-portlet"] page="portlet.ftl">
							<@liferay_util["include"] page=content_include />
						</@>
					</#if>
				</div>
			</div>

			<#if !is_login_page>
				<div class="footer">
					<#include "${full_templates_path}/footer.ftl" />
				</div>
			</#if>
		</main>

		<div class="liferay-bottom">
			<@liferay_util["include"] page=body_bottom_include />
			<@liferay_util["include"] page=bottom_include />
		</div>
	</div>
</body>
</html>