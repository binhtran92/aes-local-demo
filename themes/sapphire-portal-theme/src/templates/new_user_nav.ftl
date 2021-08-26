<div class="sapphire-user-nav">
  <div class="dropdown">
    <button class="dropbtn">
      <img src="${themeDisplay.getPathThemeImages()}/icons/user.png" class="top_icons" id="sapphire_user"/>
    </button>
    <div class="dropdown-content">
			<a class="main-link main-link--sub" href="${userManagementUrl}">
				<div class="main-link__label">${my_profile_text}</div>
			</a>

			<a class="main-link main-link--sub" href="${wishlistUrl}">
				<div class="main-link__label">${wish_lists_text}</div>
			</a>

			<a class="main-link main-link--sub" href="${notification_url}">
				<div class="main-link__label">
					${notifications_text}
					<div class="minium-notification-badge">${notification_count}</div>
				</div>
			</a>

      <a href= "${sign_out_url}" class="main-link main-link--sub"> 
        <div class="main-link__label">
          ${sign_out_text}
        </div>
      </a>
    </div>
  </div>
</div>
