<#assign portalURL = themeDisplay.getURLPortal()>
<#assign fullURL = portalURL + "/group">

<footer id="footer" role="contentinfo">
  <div class="col block d-flex">
    <div class="col-8 p-0 flex-row d-flex">
      <div class="col-4 p-0"> 
        <h3 class="text-uppercase">Help</h3>
        <div class="mt-3 column-content">
          <a href="${fullURL}/contact-us">Contact Us</a><br/>
          <a href="${fullURL}/delivery-returns">Delivery & Returns</a><br/>
          <a href="${fullURL}/faq">FAQs</a><br/>
          <a href="${fullURL}/candle-safety">Candle Safety</a>
        </div>
      </div>
      
      <div class="col-4 p-0"> 
        <h3 class="text-uppercase">About</h3>
        <div class="mt-3 column-content">
          <a href="${fullURL}/our-story">Our Story</a><br/>
        </div>
      </div>

      <div class="col-4 p-0"> 
        <h3 class="text-uppercase">Connect</h3>
        <div class="mt-3 column-content">
          <div class="d-flex flex-column">
            Glasshouse Fragrances
              <div class="d-flex flex-row">
                <a href="https://www.facebook.com/GlasshouseFragrances/" target="_blank">
                  <img src="${themeDisplay.getPathThemeImages()}/icons/facebook.png" class="footer-social"/> 
                </a>
                <a href="https://www.instagram.com/glasshousefragrances/?hl=en" target="_blank">
                  <img src="${themeDisplay.getPathThemeImages()}/icons/Instagram.png" class="footer-social"/>
                </a>
              </div>
            Circa              
              <div class="d-flex flex-row">
                <a href="https://www.facebook.com/CircaHome/" target="_blank">
                  <img src="${themeDisplay.getPathThemeImages()}/icons/facebook.png" class="footer-social"/> 
                </a>
                <a href="https://www.instagram.com/circahome/?hl=en" target="_blank">
                  <img src="${themeDisplay.getPathThemeImages()}/icons/Instagram.png" class="footer-social"/>
                </a>
              </div>
          </div> 
        </div>
      </div>
    </div>
    
    <div class="col-4 d-flex flex-row">
      <div class="col-6">
        <img src="${themeDisplay.getPathThemeImages()}/logos/GH_Primary_Logo-800px_crop.png" class="logos"/>
      </div>

      <div class="col-6">
        <img src="${themeDisplay.getPathThemeImages()}/logos/Circa_Primary_BLACK-01.png" class="logos"/>
      </div>
    </div>
  </div>
</footer>
