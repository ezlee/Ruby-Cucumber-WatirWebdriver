class HomePage
  include PageObject

  def toolbar
  	Toolbar.new(@browser)
  end

  def logo
  	if ENV['browserName'] == "internet explorer"
  		@browser.element(:id => 'brand-logo')
  	else
	  	@browser.element(:class => 'logo-image')
  	end
  end

  def endOfSummerSale
  	@browser.element(:title => 'wshp-073115-s1')
  end

  def signUpSavePopupCloseBtn
  	@browser.element(:id => 'ad_email_btn-close')
  end

end