<div class="minium-sidebar">
	<div class="minium-sidebar__start">

	</div>

	<div class="minium-sidebar__middle">
		<@site_navigation_menu_main default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	</div>

	<div class="minium-sidebar__end">
		<#include "${full_templates_path}/user_nav.ftl" />
	</div>
</div>