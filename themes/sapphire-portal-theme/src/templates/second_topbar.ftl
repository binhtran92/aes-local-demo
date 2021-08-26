<#assign portalURL = themeDisplay.getURLPortal()>
<#assign fullURL = portalURL + "/group">

<div class="minium-frame__secondary">
  <div class="col-8 p-0 d-flex">

    <div class="col-3">
      <a href="${fullURL}" class="homeitem">
        Home
      </a>
    </div>

    <div class="col-3 menuitem">
      <div class="dropdown">
        <button class="dropbtn"><a href="${fullURL}/catalogue">Order Now</a></button>
            <#list nav_items as nav_item>
				<#if nav_item.getName() == "Staff Catalogue">
					<#assign
					nav_item_layout = nav_item.getLayout()
					/>
					<#if (layoutPermission.contains(permissionChecker, nav_item_layout.getPlid(), "VIEW"))>
                        <div class="dropdown-content">
                            <a href="${fullURL}/staff-catalogue">BDM Catalogue</a>
                        </div>
					</#if>
				</#if>
            </#list>
      </div>
    </div>

    <div class="col-3 menuitem">
      <div class="dropdown">
        <button class="dropbtn">My Orders</button>
        <div class="dropdown-content">
          <a href="${fullURL}/draft-orders">Draft Orders</a>
          <a href="${fullURL}/placed-orders">Placed Orders</a>
        </div>
      </div>
    </div>

    <div class="col-3 menuitem">
      <div class="dropdown">
        <button class="dropbtn"><a href="${fullURL}/invoices">My Invoices</a></button>
        <div class="dropdown-content">
          <a href="${userManagementUrl}">My Account</a>
          <#list nav_items as nav_item>
          	<#if nav_item.getName() == "Invoice payment history">
				<#assign
				nav_item_layout = nav_item.getLayout()
				/>
				<#if (layoutPermission.contains(permissionChecker, nav_item_layout.getPlid(), "VIEW"))>
					<a href="${fullURL}/invoice-payment-history">My Payments</a>
				</#if>
            </#if>
          </#list>
        </div>
      </div>
    </div>

  </div>
</div>
