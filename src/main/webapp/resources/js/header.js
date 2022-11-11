$(document).ready(function(){
		/* Menu Toggle */
		var menuToggle = $('.menu-toggle');
		var menuIcon = $('#nav-icon');
		var menuLinks = $('.primary-navigation-ul');

		menuToggle.click(function(){
			if( menuToggle.hasClass('open') ) {
				menuToggle.removeClass('open');
				menuIcon.removeClass('open');
				menuLinks.removeClass('open');
			} else {
				menuToggle.addClass('open');
				menuIcon.addClass('open');
				menuLinks.addClass('open');
			}
		});

		$(window).resize(function() {
			if( $(window).width() > 1023 ) {
				if( menuToggle.hasClass('open') ) {
					menuToggle.removeClass('open');
					menuIcon.removeClass('open');
					menuLinks.removeClass('open');
				}
			}
		});
		/* END Menu Toggle */
	});

if (window.addEventListener && typeof mmLoaded == "undefined") {
	var newMenu = false;
	var schemaJSON = [{
			"position": 0,
			"icon": "",
			"name": "Brands",
			"link": "collection",
			"id": "158452908141",
			"type": "tree",
			"items": [{
				"position": 0,
				"name": "isoSPEC",
				"link": "collection",
				"id": "158457888877"
			}, {
				"position": 1,
				"name": "Adam Equipment",
				"link": "collection",
				"id": "158451105901"
			}, {
				"position": 2,
				"name": "Environmental Express",
				"link": "collection",
				"id": "158456250477"
			}, {
				"position": 3,
				"name": "Environmental Sampling Supply",
				"link": "collection",
				"id": "158451073133"
			}, {
				"position": 4,
				"name": "Glass Expansion",
				"link": "collection",
				"id": "158451204205"
			}, {
				"position": 5,
				"name": "Goodfellow",
				"link": "collection",
				"id": "158451630189"
			}, {
				"position": 6,
				"name": "High-Purity Standards",
				"link": "collection",
				"id": "158458282093"
			}, {
				"position": 7,
				"name": "Inorganic Ventures",
				"link": "collection",
				"id": "158454579309"
			}, {
				"position": 8,
				"name": "NSI Lab Solutions",
				"link": "collection",
				"id": "158451007597"
			}, 
			]
		}, {
			"position": 1,
			"icon": "",
			"name": "Products",
			"link": "collection",
			"id": "495058963",
			"type": "tree",
			"items": [{
				"position": 0,
				"name": "Chemicals & Standards",
				"link": "collection",
				"id": "158463754349"
			}, {
				"position": 1,
				"name": "Equipment & Instruments",
				"link": "collection",
				"id": "158463787117"
			}, {
				"position": 2,
				"name": "Lab Consumables & Supplies",
				"link": "collection",
				"id": "158463819885"
			}, {
				"position": 3,
				"name": "Research & Development Materials",
				"link": "collection",
				"id": "158464016493"
			}, {
				"position": 4,
				"name": "Custom Products & Services",
				"link": "collection",
				"id": "158451564653"
			}]
		}, {
			"position": 2,
			"icon": "",
			"name": "About",
			"link": "page",
			"id": "48142286957",
			"type": "none"
		}, {
			"position": 3,
			"icon": "",
			"name": "Special Offers",
			"link": "page",
			"id": "48142221421",
			"type": "none"
		}, {
			"position": 4,
			"icon": "",
			"name": "Downloads",
			"link": "page",
			"id": "48142254189",
			"type": "none"
		}, {
			"position": 5,
			"icon": "",
			"name": "News",
			"link": "page",
			"id": "48142352493",
			"type": "none"
		}, {
			"position": 6,
			"icon": "",
			"name": "Events",
			"link": "page",
			"id": "1213136915",
			"type": "none"
		}, {
			"position": 7,
			"icon": "",
			"name": "Contact Us",
			"link": "page",
			"id": "1036091411",
			"type": "none"
		}, {
			"position": 8,
			"icon": "",
			"name": "FAQ's",
			"link": "page",
			"id": "48142319725",
			"type": "none"
		}],
		schemaLinksJSON = {
			"collection": {
				"158452908141": "\/collections\/brands",
				"158457888877": "\/collections\/brand-isospec",
				"158451105901": "\/collections\/brand-adam-equipment",
				"158456250477": "\/collections\/brand-environmental-express",
				"158451073133": "\/collections\/brand-environmental-sampling-supply",
				"158451204205": "\/collections\/brand-glass-expansion",
				"158451630189": "\/collections\/brand-goodfellow",
				"158458282093": "\/collections\/brand-high-purity-standards",
				"158454579309": "\/collections\/brand-inorganic-ventures",
				"158451007597": "\/collections\/nsi-lab-solutions-1",
				"158451040365": "\/collections\/brand-o2si",
				"158451236973": "\/collections\/brand-optifix",
				"158458019949": "\/collections\/brand-savillex",
				"495058963": "\/collections\/all",
				"158463754349": "\/collections\/category-chemicals-standards",
				"158463787117": "\/collections\/category-equipment-instruments",
				"158463819885": "\/collections\/category-lab-consumables-supplies",
				"158464016493": "\/collections\/category-research-development-materials",
				"158451564653": "\/collections\/category-custom-products-services"
			},
			"page": {
				"48142286957": "\/pages\/about",
				"48142221421": "\/pages\/special-offers",
				"48142254189": "\/pages\/downloads",
				"48142352493": "\/pages\/news",
				"1213136915": "\/pages\/events",
				"1036091411": "\/pages\/contact-us",
				"48142319725": "\/pages\/faqs"
			}
		},
		schemaDesignJSON = [{
			"action": "menu-select",
			"value": "primary-menu"
		}, {
			"action": "design",
			"setting": "background_hover_color",
			"value": "#222853"
		}, {
			"action": "design",
			"setting": "button_text_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "button_text_hover_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "button_background_color",
			"value": "#0da19a"
		}, {
			"action": "design",
			"setting": "button_background_hover_color",
			"value": "#0d8781"
		}, {
			"action": "design",
			"setting": "tree_sub_direction",
			"value": "set_tree_auto"
		}, {
			"action": "design",
			"setting": "font_family",
			"value": "Default"
		}, {
			"action": "design",
			"setting": "text_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "link_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "link_hover_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "background_color",
			"value": "#0e0530"
		}, {
			"action": "design",
			"setting": "font_size",
			"value": "16px"
		}, {
			"action": "design",
			"setting": "vertical_font_size",
			"value": "16px"
		}, {
			"action": "design",
			"setting": "vertical_text_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "vertical_link_color",
			"value": "#ffffff"
		}, {
			"action": "design",
			"setting": "vertical_link_hover_color",
			"value": "#ffffff"
		}],
		mmLoaded = true,
		undo = [],
		redo = [],
		action = "",
		tempMenuObject = {},
		changedMenu = false,
		submenuToggled = false,
		changingPage = false,
		saving = false,
		panelOpened = false,
		verticalMenuMaxWidth = 10000,
		selectedMenu, clicked, touched, burgerIcon, disableOnClick = false,
		globalTouch = true,
		onClickOnlyReinit = false,
		disableOnScroll = false,
		mobileMenuMilliseconds = 350,
		ulPaths = [],
		customHeaderOffset = false,
		fontSize = 0,
		storeUlCount = 0,
		storeNavCount = 0,
		loadMegaMenuTries = 100,
		customMenuUls, setTreeDirection, defaultFontSelected = false,
		forceMobile = false,
		activateMegaMenu = true,
		previewPanelLoaded = false,
		allowMainMenuRecalibration = true,
		readyStateCheckInterval, addTouchNew = false,
		disableThemeScript = false,
		lazyLoadSupport = false,
		mmApplyOnce = false,
		initializedSchema = false; /* INITIALIZE MENU FUNCTIONS */
	function loadBuddhaMegaMenu() { /* in case the first load didn't work, because the wireframe didn't fully load in the dom, try again after 50 milliseconds */
		readyStateCheckInterval = setInterval(function () {
			if (jQueryBuddha.isReady && !newMenu) {
				initBuddhaMegaMenu();
			}
		}, 50);
		setTimeout(function () {
			clearInterval(readyStateCheckInterval);
		}, 15000); /* in preview initSchema earlier, to show toolbar quicker even if page is loaded partialy (wireframe not loaded) */
		if (window.self !== window.top) { /* try to load it in the window load event */
			jQueryBuddha(window).on("load", initSchema); /* timeout in case window load doesn't occur */
			setTimeout(function () {
				initSchema();
			}, 5000);
		} /* load buddha mega menu for the first time */
		initBuddhaMegaMenu();
	}

	function initBuddhaMegaMenu() { /* check if wireframe exists and is fully loaded */
		if (jQueryBuddha(".buddha-hidden-wireframe").length > 0 && jQueryBuddha(".buddha-hidden-wireframe").next().length > 0) {
			newMenu = jQueryBuddha(".buddha-hidden-wireframe").first().html();
			clearInterval(readyStateCheckInterval);
		} else {
			return false;
		} /* check it mega menu app is installed */
		var installed = false;
		jQueryBuddha("script").each(function () {
			if (jQueryBuddha(this).text().indexOf("mm-init.js?") != -1 && jQueryBuddha(this).text().indexOf("asyncLoad") != -1 && jQueryBuddha(this).text().indexOf("initSchema") == -1) {
				installed = true;
			}
		}); /* jQueryBuddha("html").html().indexOf("assets\/mm-init.js?")!=-1 */
		if (installed) {
			var iterations = 0; /* bundle app by smar7 apps fix */
			var bundleAppMutations = setInterval(function () {
				iterations++;
				if (typeof mutationExceptions !== "undefined") {
					mutationExceptions[mutationExceptions.length] = ".buddha-menu-item";
					clearInterval(bundleAppMutations);
				}
				if (iterations > 10) {
					clearInterval(bundleAppMutations);
				}
			}, 1000);
			if (disableThemeScript == false) {
				addTouchNew = true; /* generic mobile menu toggle translate effect */
				jQueryBuddha(document).on("toggleSubmenu", function () {
					if (jQueryBuddha("#MobileNav").length > 0 && jQueryBuddha("#PageContainer").length > 0 && jQueryBuddha("#PageContainer").attr("style") != undefined && jQueryBuddha("#PageContainer").attr("style").includes("translate3d")) {
						var menuHeight = jQueryBuddha("#MobileNav").outerHeight();
						var newTransition = "transform: translate3d(0px, " + menuHeight + "px, 0px)";
						jQueryBuddha("#PageContainer").attr("style", newTransition);
					}
				});
				jQueryBuddha(window).on("load", function () {
					setTimeout(function () {
						if (jQueryBuddha("#megamenu_level__1").length > 0 && jQueryBuddha("#megamenu_level__1").is(".vertical-mega-menu")) {
							reinitMenus("#megamenu_level__1");
						}
					}, 100);
				});
			}
			initSchema(); /* remove shopify fixed top bar (keep verifying in case you navigate with mobile view, then resize) */
			if (window.self !== window.top) {
				jQueryBuddha("#admin_bar_iframe").remove();
				jQueryBuddha("html").css("padding-top", "0px");
				setInterval(function () {
					jQueryBuddha("*").each(function () {
						if (jQueryBuddha(this).css("top") == "40px" && jQueryBuddha(this).css("position") == "fixed") {
							jQueryBuddha(this).css("top", "0");
						}
					});
				}, 1000);
			}
			var reinitTimeout;
			var windowWidth = jQueryBuddha(window).width();
			jQueryBuddha(window).resize(function () {
				if (windowWidth != jQueryBuddha(window).width()) {
					jQueryBuddha(".mm-hovering").removeClass("mm-hovering");
					jQueryBuddha(".submenu-opened").hide().removeClass("submenu-opened");
					jQueryBuddha(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
					clearTimeout(reinitTimeout);
					reinitTimeout = setTimeout(function () {
						jQueryBuddha(document).trigger("mmWindowResize");
						applyMegaMenu();
						applyOnClick();
						windowWidth = jQueryBuddha(window).width();
					}, 300);
				}
			});
			if (!disableOnScroll) { /* DEPRECATED var reinitScrollTimeout; jQueryBuddha(window).scroll(function(){ clearTimeout(reinitScrollTimeout); reinitScrollTimeout = setTimeout(function(){ var submenuVisible = false; jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item>.mm-submenu").each(function(){ if (parseInt(jQueryBuddha(this).css("top"))>0) { setSubmenuBoundries(jQueryBuddha(this).parent()); } }); },10); }); */ /* if static main menu, add overflow */
				var reinitScrollTimeout;
				setInterval(function () {
					jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item>.mm-submenu").each(function () {
						if (parseInt(jQueryBuddha(this).css("top")) > 0) {
							var li = jQueryBuddha(this).parent();
							if (li.find(">ul.mm-submenu.simple").length > 0 || li.find(">ul.mm-submenu.tabbed").length > 0) {
								var hasPositionStatic = false;
								li.parent().parents().each(function () {
									if (jQueryBuddha(this).css("position") == "fixed") {
										hasPositionStatic = true;
									}
								});
								if (li.find(">ul.mm-submenu.simple").length > 0) {
									var submenu = li.find(">ul.mm-submenu.simple");
								} else {
									var submenu = li.find(">ul.mm-submenu.tabbed");
								}
								if (hasPositionStatic) {
									var headerHeight = parseInt(submenu.offset().top - jQueryBuddha(window).scrollTop());
									var maxHeight = jQueryBuddha(window).height() - headerHeight;
									if ((jQueryBuddha(window).height() - 50) < submenu.height()) {
										submenu.css({
											"max-height": maxHeight + "px",
											"overflow": "scroll",
											"overflow-x": "hidden"
										});
									} /* in case there is little content on a page and the main menu is fixed */
								} else if ((jQueryBuddha(document).height() - 200) <= jQueryBuddha(window).height()) {
									var maxHeight = jQueryBuddha(document).height() - 250;
									submenu.css({
										"max-height": maxHeight + "px",
										"overflow": "scroll",
										"overflow-x": "hidden"
									});
								} else {
									submenu.css({
										"max-height": "none",
										"overflow": "hidden"
									});
								}
							}
						}
					});
				}, 1000);
			} /* skip our own ul's in the dom change poller to avoid unwanted multiple menu applications. also skip specific theme uls and uls that have no a[href] (if customMenuUls is used let dom change poller watch for uls without a as well) */
			var possibleMenuUls = "ul:not(.buddha-menu-item ul, .buddha-hidden-wireframe )";
			if (typeof customMenuUls === "undefined") possibleMenuUls += ":has(a[href])";
			var loadMegaMenuCount = 1;
			if (storeUlCount != jQueryBuddha(possibleMenuUls).length || storeNavCount != jQueryBuddha("nav").length) {
				storeUlCount = jQueryBuddha(possibleMenuUls).length;
				storeNavCount = jQueryBuddha("nav").length;
				applyMegaMenu(); /* when a certain element is clicked, reinit the menus and reset the simple submenu width, in case the side menu is hidden */
				applyOnClick();
			}
			clearInterval(loadMegaMenu);
			var loadMegaMenu = setInterval(function () {
				loadMegaMenuCount++;
				if (loadMegaMenuCount > loadMegaMenuTries) {
					clearInterval(loadMegaMenu);
				}
				if (storeUlCount != jQueryBuddha(possibleMenuUls).length || storeNavCount != jQueryBuddha("nav").length) {
					storeUlCount = jQueryBuddha(possibleMenuUls).length;
					storeNavCount = jQueryBuddha("nav").length; /* if customMenuUls also avoid reappling the menu if it is already applied -> performance fix */
					if (typeof customMenuUls !== "undefined") {
						var numAlreadyApplied = 0;
						var menus = customMenuUls.split(",");
						jQueryBuddha.each(menus, function (key, value) { /*element exist in page and is already applied -> return*/
							if (jQueryBuddha(value).length > 0 && jQueryBuddha(value).is(".vertical-mega-menu,.horizontal-mega-menu")) numAlreadyApplied++;
						}); /* all requested custom menus are already applied => do nothing */
						if (numAlreadyApplied == menus.length) {
							clearInterval(loadMegaMenu);
							return;
						}
					}
					applyMegaMenu(); /* when a certain element is clicked, reinit the menus and reset the simple submenu width, in case the side menu is hidden */
					applyOnClick();
				}
			}, 100);
		} else if (typeof hideOriginalMenuInterval !== "undefined") {
			jQueryBuddha(".buddha-disabled-menu").removeClass("buddha-disabled-menu");
			jQueryBuddha("link").each(function () {
				if (jQueryBuddha(this).attr("href").indexOf("buddha-megamenu.css") !== -1) {
					jQueryBuddha(this).remove();
				}
			});
			clearInterval(hideOriginalMenuInterval);
		} else {
			jQueryBuddha(".buddha-disabled-menu").removeClass("buddha-disabled-menu");
			jQueryBuddha("link").each(function () {
				if (jQueryBuddha(this).attr("href").indexOf("buddha-megamenu.css") !== -1) {
					jQueryBuddha(this).remove();
				}
			});
		}
		jQueryBuddha(window).on("beforeunload", function () {
			if ((window.self !== window.top) && (undo.length > 0 || changedMenu) && !saving) {
				return "You might have unsaved changes.";
			}
		}); /* jQueryBuddha(window).on("unload", function() { changingPage = true; if (window.self!==window.top) { var preview = parent; if (typeof parent.postMessage === "undefined") { preview = top; } preview.postMessage("startLoader", "*" ); } }); */
	} /* when a certain element is clicked, reinit the menus and reset the simple submenu width, in case the side menu is hidden */
	function applyOnClick() {
		if (!disableOnClick && selectedMenu != undefined && selectedMenu != "none") {
			clicked = false;
			if (jQueryBuddha(burgerIcon).length == 0) {
				burgerIcon = false;
			}
			jQueryBuddha(burgerIcon || "*").unbind("click.apply-mm");
			jQueryBuddha(burgerIcon || "*").bind("click.apply-mm", function () {
				var element = jQueryBuddha(this);
				if (!clicked && !touched) {
					clicked = true;
					setTimeout(function () { /* visibility is checked for the brooklin alike themes: applyMM also on items placed under the mm ul and not under the mainMenuItems, if the mainMenuItems are hidden (exclude search in mobile view but not burger button). */
						if (!changingPage && element.closest(".buddha-menu-item").length == 0 && (element.closest(".horizontal-mega-menu").length == 0 || (element.closest(".horizontal-mega-menu").length != 0 && !$(element.closest(".horizontal-mega-menu").find(".buddha-menu-item")).is(":visible"))) && (element.closest(".vertical-mega-menu").length == 0 || (element.closest(".vertical-mega-menu").length != 0 && !$(element.closest(".vertical-mega-menu").find(".buddha-menu-item")).is(":visible"))) && !element.hasClass('stop-mega-menu-reinit')) {
							if (onClickOnlyReinit) {
								jQueryBuddha.each(ulPaths, function (index, value) {
									reinitMenus(value);
								});
							} else {
								applyMegaMenu();
							} /* This fix makes it work with the BEST Currency Converter app */
							if (typeof DoublyGlobalCurrency !== 'undefined') {
								if (jQueryBuddha('.currency-switcher-btn.selected').length > 0) {
									DoublyGlobalCurrency.convertAll(jQueryBuddha('.currency-switcher-btn.selected').attr('doubly-currency'));
								} else if (jQueryBuddha('[name=doubly-currencies]').length > 0) {
									DoublyGlobalCurrency.convertAll(jQueryBuddha('[name=doubly-currencies]').val());
								}
							}
						}
					}, mobileMenuMilliseconds);
				}
				setTimeout(function () {
					clicked = false;
				}, (mobileMenuMilliseconds + 50));
			});
		}
	}

	function initSchema() {
		if (initializedSchema == false) {
			initializedSchema = true;
			if (typeof schemaJSON == "string") {
				schemaJSON = JSON.parse(schemaJSON);
			}
			if (typeof schemaLinksJSON == "string") {
				schemaLinksJSON = JSON.parse(schemaLinksJSON);
			}
			if (typeof schemaDesignJSON == "string") {
				schemaDesignJSON = JSON.parse(schemaDesignJSON);
			} /* apply custom design */
			recreateDesign();
			action = "";
			if (window.self !== window.top) {
				var preview = parent;
				if (typeof parent.postMessage === "undefined") {
					preview = top;
				}
				preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
			}
		}
	}

	function iframeReady() {
		previewPanelLoaded = true;
		document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
	}

	function reloadPreview() {
		location.reload();
	} /* add countdown to target mainMenuItem */
	function initCountdown(mainMenuItem) {
		var date = mainMenuItem.attr("countdown"); /* init countdown with the configured date attr */
		if (mainMenuItem.find('.buddha-menu-item-countdown').length == 0 && date != undefined && !isNaN(Date.parse(date))) { /* date attr is valid */ /* time to elapse is (date - NOW) % 24h */
			var timeUntilElapseInSeconds = (((new Date(date)).getTime() - (new Date()).getTime()) / 1000) % 86400;
			if (timeUntilElapseInSeconds < 0) timeUntilElapseInSeconds += 86400; /* add countdown tag and init flipClock */
			if (mainMenuItem.find('>a>i.fa-angle-down:last').length > 0) {
				mainMenuItem.find('>a>i.fa-angle-down:last').before(" <i class=\"buddha-menu-item-countdown\"> <div></div> </i>");
			} else {
				mainMenuItem.find('>a').append(" <i class=\"buddha-menu-item-countdown\"> <div></div> </i>");
			}
			mainMenuItem.find(".buddha-menu-item-countdown>div").FlipClock(timeUntilElapseInSeconds, {
				clockFace: 'DailyCounter',
				countdown: true,
			});
		}
	}

	function shadeColor(color, percent) {
		var f = parseInt(color.slice(1), 16),
			t = percent < 0 ? 0 : 255,
			p = percent < 0 ? percent * -1 : percent,
			R = f >> 16,
			G = f >> 8 & 0x00FF,
			B = f & 0x0000FF;
		return "#" + (0x1000000 + (Math.round((t - R) * p) + R) * 0x10000 + (Math.round((t - G) * p) + G) * 0x100 + (Math.round((t - B) * p) + B)).toString(16).slice(1);
	} /* add further css styles for a certain propSetting */
	function customPropSettingsStyles(setting, value) {
		var style = '';
		switch (setting) {
			case 'countdown_background_color':
				value = shadeColor(value, -0.5); /* style countdown shadow too */
				style += '.flip-clock-wrapper ul.play li.flip-clock-before .up .shadow {' + 'background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100%) !important;' + 'background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0.1)), color-stop(100%, ' + value + ')) !important;' + 'background: linear, top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100% !important;' + 'background: -o-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100%) !important;' + 'background: -ms-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100%) !important;' + 'background: linear, to bottom, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100% !important;}';
				style += '.flip-clock-wrapper ul.play li.flip-clock-active .up .shadow {' + 'background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%,' + value + ' 100%) !important;' + 'background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0, 0, 0.1)), color-stop(100%, ' + value + ')) !important;' + 'background: linear, top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100% !important;' + 'background: -o-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100%) !important;' + 'background: -ms-linear-gradient(top, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100%) !important;' + 'background: linear, to bottom, rgba(0, 0, 0, 0.1) 0%, ' + value + ' 100% !important;}';
				style += '.flip-clock-wrapper ul.play li.flip-clock-before .down .shadow {' + 'background: -moz-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, ' + value + '), color-stop(100%, rgba(0, 0, 0, 0.1))) !important;' + 'background: linear, top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100% !important;' + 'background: -o-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: -ms-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: linear, to bottom, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100% !important;}';
				style += '.flip-clock-wrapper ul.play li.flip-clock-active .down .shadow {' + 'background: -moz-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, ' + value + '), color-stop(100%, rgba(0, 0, 0, 0.1))) !important;' + 'background: linear, top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100% !important;' + 'background: -o-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: -ms-linear-gradient(top, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100%) !important;' + 'background: linear, to bottom, ' + value + ' 0%, rgba(0, 0, 0, 0.1) 100% !important;}';
				break;
		}
		return style;
	}

	function applyMegaMenu(menu) { /* bundle app by smar7 apps fix */
		if (typeof mutationExceptions !== "undefined") {
			mutationExceptions[mutationExceptions.length] = "ul";
		}
		if (typeof hideOriginalMenuInterval !== "undefined") {
			clearInterval(hideOriginalMenuInterval);
		}
		if (menu != undefined) {
			var newSchemaDesign = [];
			selectedMenu = menu;
			jQueryBuddha.each(schemaDesignJSON, function (key, item) {
				if (item.action != "menu-select") {
					newSchemaDesign.push(item);
				}
			});
			schemaDesignJSON = newSchemaDesign;
			changedMenu = true;
		} else {
			jQueryBuddha.each(schemaDesignJSON, function (key, item) {
				if (item.action == "menu-select") {
					selectedMenu = item.value;
				}
			});
		}
		if (mmApplyOnce == false) {
			jQueryBuddha(".vertical-mega-menu").removeClass("vertical-mega-menu");
			jQueryBuddha(".horizontal-mega-menu").removeClass("horizontal-mega-menu");
			jQueryBuddha(".buddha-disabled").removeClass("buddha-disabled");
			jQueryBuddha(".buddha-menu-item").remove();
			jQueryBuddha("#themeScript").remove();
		}
		var links = [];
		jQueryBuddha.each(linkLists, function (key, item) {
			if (selectedMenu == key) {
				links = item.items;
				return false;
			}
		});
		if (window.self !== window.top) {
			console.log(links);
		}
		if (activateMegaMenu == false) {
			selectedMenu = "none";
		}
		if (selectedMenu != undefined && selectedMenu != "none" && links.length > 0) {
			jQueryBuddha(customMenuUls || "ul,nav").each(function () {
				var forceMenu = false;
				var elementFits = 0;
				var skipCheck = false;
				tempMenuObject = {};
				tempMenuObject.ul = jQueryBuddha(this); /* Skip reapplying with mmApplyOnce. ThemeScript is 99% in after or beforeinit -> no need to remove */
				if (mmApplyOnce == true) {
					if (tempMenuObject.ul.is(".vertical-mega-menu, .horizontal-mega-menu")) {
						return true;
					}
				}
				if (disableThemeScript == false) {
					var buddhaFilterLiElements = function (liElements) {
						var elements = [];
						liElements.each(function () {
							if (jQueryBuddha(this).find("[href=\"/cart\"]").length == 0) elements.push(jQueryBuddha(this));
						});
						return elements;
					};
					if (tempMenuObject.ul.is("#mobile_menu, #velaMegamenu .nav, #SiteNav")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children().not(".search_container,.site-nav__item_cart"));
					} else if (tempMenuObject.ul.is(".main_nav .nav .menu")) {
						var numMenusApplied = 0,
							numMenusAppliedSticky = 0;
						jQueryBuddha(".main_nav .nav .menu").each(function () {
							if (jQueryBuddha(this).parents(".sticky_nav").length == 0) {
								if (jQueryBuddha(this).find(".buddha-menu-item").length > 0) {
									numMenusApplied++;
								}
							} else {
								if (jQueryBuddha(this).find(".buddha-menu-item").length > 0) {
									numMenusAppliedSticky++;
								}
							}
						});
						if (((tempMenuObject.ul.parents(".sticky_nav").length > 0) && (numMenusAppliedSticky < 1)) || ((tempMenuObject.ul.parents(".sticky_nav").length == 0) && (numMenusApplied < 1))) {
							forceMenu = true;
							skipCheck = true;
							tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children().not(".search_container,.site-nav__item_cart"));
						}
					} else if (tempMenuObject.ul.is("#mobile-menu") && tempMenuObject.ul.find(".hamburger").length == 0) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children());
					} else if (tempMenuObject.ul.is("#accessibleNav")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children().not(".customer-navlink"));
					} else if (tempMenuObject.ul.is("#megamenu_level__1")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liClasses = "level_1__item";
						tempMenuObject.aClasses = "level_1__link";
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children());
					} else if (tempMenuObject.ul.is(".mobile-nav__items")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liClasses = "mobile-nav__item";
						tempMenuObject.aClasses = "mobile-nav__link";
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children());
					} else if (tempMenuObject.ul.is("#NavDrawer > .mobile-nav")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liClasses = "mobile-nav__item";
						tempMenuObject.aClasses = "mobile-nav__link";
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children().not(".mobile-nav__search"));
					} else if (tempMenuObject.ul.is("#nav .mm-panel .mm-listview")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children());
						var firstMmPanel = true;
						jQueryBuddha("#nav>.mm-panels>.mm-panel").each(function () {
							if (firstMmPanel) {
								firstMmPanel = false;
								jQueryBuddha(this).removeClass("mm-hidden mm-subopened");
							} else {
								jQueryBuddha(this).remove();
							}
						});
					} else if (tempMenuObject.ul.is(".SidebarMenu__Nav--primary")) {
						forceMenu = true;
						skipCheck = true;
						tempMenuObject.liClasses = "Collapsible";
						tempMenuObject.aClasses = "Collapsible__Button Heading u-h6";
						tempMenuObject.liItems = buddhaFilterLiElements(jQueryBuddha(tempMenuObject.ul).children());
					} /* try to find li and a classes for requested menu if they are not set */
					if (skipCheck == true) {
						jQueryBuddha(this).children("li").each(function () {
							var li = jQueryBuddha(this);
							var a = li.find("a").first();
							var href = a.attr("href");
							if ((href == undefined || (href != undefined && (href.substr(0, 1) == "#" || href == ""))) && li.find("a:nth-child(2)").length > 0) {
								a = li.find("a:nth-child(2)");
								href = a.attr("href");
							} else if ((href == undefined || (href != undefined && (href.substr(0, 1) == "#" || href == ""))) && li.find("a>a").length > 0) {
								a = li.find("a>a");
								href = a.attr("href");
							}
							if (links[elementFits] != undefined && href == links[elementFits]) {
								if (tempMenuObject.liClasses == undefined) {
									tempMenuObject.liClasses = "";
								}
								tempMenuObject.liClasses = concatClasses(li.attr("class"), tempMenuObject.liClasses);
								if (tempMenuObject.aClasses == undefined) {
									tempMenuObject.aClasses = [];
								}
								tempMenuObject.aClasses = concatClasses(a.attr("class"), tempMenuObject.aClasses);
								elementFits++;
							} else if (elementFits > 0 && elementFits != links.length) {
								elementFits = 0;
								if (href == links[0]) {
									elementFits = 1;
								}
							}
						});
					}
				}
				if (!skipCheck) {
					jQueryBuddha(this).children("li").each(function () {
						var li = jQueryBuddha(this);
						var a = li.find("a").first();
						var href = a.attr("href");
						if ((href == undefined || (href != undefined && (href.substr(0, 1) == "#" || href == ""))) && li.find("a:nth-child(2)").length > 0) {
							a = li.find("a:nth-child(2)");
							href = a.attr("href");
						} else if ((href == undefined || (href != undefined && (href.substr(0, 1) == "#" || href == ""))) && li.find("a>a").length > 0) {
							a = li.find("a>a");
							href = a.attr("href");
						} /*if (typeof href !== "undefined") { href = href.replace("http://"+buddhaMegaMenuShop,"").replace("https://"+buddhaMegaMenuShop,""); }*/
						if (links[elementFits] != undefined && href == links[elementFits]) {
							if (tempMenuObject.liClasses == undefined) {
								tempMenuObject.liClasses = "";
							}
							tempMenuObject.liClasses = concatClasses(li.attr("class"), tempMenuObject.liClasses);
							if (tempMenuObject.aClasses == undefined) {
								tempMenuObject.aClasses = [];
							}
							tempMenuObject.aClasses = concatClasses(a.attr("class"), tempMenuObject.aClasses);
							if (tempMenuObject.liItems == undefined) {
								tempMenuObject.liItems = [];
							}
							if (jQueryBuddha.inArray(li, tempMenuObject.liItems) == -1) {
								tempMenuObject.liItems[tempMenuObject.liItems.length] = li;
							}
							li.addClass("buddha-transparent");
							elementFits++;
						} else if (elementFits > 0 && elementFits != links.length) {
							elementFits = 0;
							tempMenuObject.liItems = [];
							jQueryBuddha(".buddha-transparent").removeClass("buddha-transparent");
							if (href == links[0]) {
								elementFits = 1;
								tempMenuObject.liItems[tempMenuObject.liItems.length] = li;
								li.addClass("buddha-transparent");
							}
						}
					});
				}
				if ((elementFits > 0 && elementFits == links.length) || forceMenu) {
					var liClasses = getSpecificClasses(tempMenuObject.liClasses);
					var aClasses = getSpecificClasses(tempMenuObject.aClasses);
					jQueryBuddha.each(tempMenuObject.liItems, function (key, item) {
						jQueryBuddha(item).removeClass("buddha-transparent").addClass("buddha-disabled");
					});
					if (newMenu) {
						jQueryBuddha(this).prepend(newMenu);
						jQueryBuddha(this).find(".buddha-menu-item").addClass(liClasses["common"]);
						jQueryBuddha(this).find(".buddha-menu-item").find(">a").attr("class", aClasses["common"]); /* Add countdown */
						jQueryBuddha(this).find(".buddha-menu-item[countdown]").each(function () {
							initCountdown(jQueryBuddha(this));
						}); /* Init data-src instead of src in case lazyload support is enabled */
						var imgAttr = "src";
						if (lazyLoadSupport == true) {
							imgAttr = "data-src";
						} /* Add Colection Images */
						jQueryBuddha(this).find(".get-collection-image").each(function () {
							var element = jQueryBuddha(this);
							var dataId = element.data("id");
							if (collectionImages[dataId] != undefined && collectionImages[dataId].indexOf("no-image") == -1) {
								element.attr(imgAttr, collectionImages[dataId]);
							}
						}); /* Add Product Images */
						jQueryBuddha(this).find(".get-product-image").each(function () {
							var element = jQueryBuddha(this);
							var dataId = element.data("id");
							if (productImages[dataId] != undefined && productImages[dataId].indexOf("no-image") == -1) {
								element.attr(imgAttr, productImages[dataId]);
							}
						});
						if (lazyLoadSupport == true) { /* add fade transitions for lazysizes */
							if (jQueryBuddha("style[id=\"buddhaMmLazySizes\"]").length == 0) jQueryBuddha("head").append("<style id=\"buddhaMmLazySizes\">\ .buddha-menu-item .lazyloaded { opacity: 1 !important; -webkit-transition: opacity .35s ease; transition: opacity .35s ease; }\ .buddha-menu-item .lazyload,.buddha-menu-item .lazyloading {opacity: 0 !important; }\ </style>");
							jQueryBuddha(this).find("img[data-src]").addClass("lazyload");
						} /* Add Product Prices */
						jQueryBuddha(this).find(".get-mega-menu-prices").each(function () {
							var element = jQueryBuddha(this);
							var dataId = element.data("id");
							if (prices[dataId] != undefined) {
								element.html(prices[dataId]);
							} else { /* hide br to keep vertical alignment */
								element.parent().find("br").attr("style", "display: none;");
							}
						});
					}
					if (newMenu === false || newMenu == '' || newMenu == 'undefined' || newMenu === null) {
						jQueryBuddha.each(schemaJSON.reverse(), function (key, item) {
							var firstLi = tempMenuObject.ul.find(">li").first();
							if (firstLi.find("a").length == 0 && firstLi.next().find("a").length > 0) {
								var clone = firstLi.next().clone();
							} else {
								var clone = firstLi.clone();
							}
							var insertedClone = clone.prependTo(tempMenuObject.ul).removeAttr("class").addClass("buddha-menu-item " + liClasses["common"]);
							var customA = false;
							if (item.link == "no-link") {
								var dataHref = "no-link";
								var href = "javascript:void(0);";
							} else if (item.link == "http") {
								var dataHref = item.http;
								var href = item.http;
							} else {
								var dataHref = (item.id != undefined && schemaLinksJSON[item.link] != undefined && schemaLinksJSON[item.link][item.id] != undefined) ? schemaLinksJSON[item.link][item.id] : schemaLinksJSON[item.link];
								var href = (item.id != undefined && schemaLinksJSON[item.link] != undefined && schemaLinksJSON[item.link][item.id] != undefined) ? schemaLinksJSON[item.link][item.id] : schemaLinksJSON[item.link];
							}
							var icon = "";
							if (item.icon != undefined && item.icon != "" && item.icon != "none") {
								icon = "<i class=\"fa fa-" + item.icon + "\" aria-hidden=\"true\"></i> ";
							}
							var aContent = icon + item.name.replace(/"/g, '"');
							if (insertedClone.find("a").first().find(">:first-child").length > 0 && insertedClone.find("a").first().find(">:first-child").prop("tagName").toLowerCase() == "span" && insertedClone.find("a").first().find("span").first().text().trim() == insertedClone.find("a").first().text().trim()) {
								var spanClass = insertedClone.find("a").first().find(">:first-child").attr("class");
								if (spanClass != "undefined") {
									aContent = "<span class=\"" + spanClass + "\">" + aContent + "</span>";
								} else {
									aContent = "<span>" + aContent + "</span>";
								}
							}
							var useOnClick = "";
							if (window.self === window.top || (window.self !== window.top && window.name == "mega-menu-iframe")) {
								useOnClick = "onclick=\"return mmGoToPage(this)\"";
							}
							if (customA) {
								var aHtml = customA;
							} else {
								var aHtml = "<a class=\"" + aClasses["common"] + "\" href=\"" + href + "\" data-href=\"" + dataHref + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(item.name.replace(/"/g, '"')).text() + "\" data-no-instant>" + aContent + "</a>";
							}
							var submenuHtml = addSubMenus(item);
							insertedClone.html(aHtml + submenuHtml);
							if (item.type == "contact") {
								jQueryBuddha("#mm-contact").clone().appendTo(insertedClone).show().removeAttr("id");
							}
						}); /* add arrow to main menu items that have submenus */
						tempMenuObject.ul.find(">li").each(function () {
							if (jQueryBuddha(this).find("ul.mm-submenu").length > 0) {
								if (jQueryBuddha(this).find(">a>span").length > 0) {
									jQueryBuddha(this).find(">a>span").append(" <i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i>");
								} else {
									jQueryBuddha(this).find(">a").append(" <i class=\"fa fa-angle-down\" aria-hidden=\"true\"></i>");
								}
							}
						}); /* add toggle submenu button for vertical menu */
						tempMenuObject.ul.find(" ul.mm-submenu").each(function () {
							if (jQueryBuddha(this).parent().find(">a>span").length > 0) {
								jQueryBuddha(this).parent().find(">a>span").append(" <button class=\"toggle-menu-btn\" style=\"display:none;\" onclick=\"return toggleSubmenu(this)\"><i class=\"fa fa-plus-circle\" aria-hidden=\"true\"></i></button>");
							} else {
								jQueryBuddha(this).parent().find(">a").append(" <button class=\"toggle-menu-btn\" style=\"display:none;\" onclick=\"return toggleSubmenu(this)\"><i class=\"fa fa-plus-circle\" aria-hidden=\"true\"></i></button>");
							}
						});
					}
					schemaJSON.reverse();
					if (liClasses["first"] || aClasses["first"] || liClasses["last"] || aClasses["last"]) {
						tempMenuObject.ul.find(".buddha-menu-item").first().addClass(liClasses["first"]);
						tempMenuObject.ul.find(".buddha-menu-item").last().addClass(liClasses["last"]);
						tempMenuObject.ul.find(".buddha-menu-item").first().find("a").first().addClass(aClasses["first"]);
						tempMenuObject.ul.find(".buddha-menu-item").last().find("a").first().addClass(aClasses["last"]);
					} /* set menu item as active */
					if (liClasses["active"] || aClasses["active"]) {
						tempMenuObject.ul.find(">.buddha-menu-item").each(function () {
							var a = jQueryBuddha(this).find("a").first();
							if (a.attr("data-href") == window.location.pathname) {
								a.addClass(aClasses["active"]);
								jQueryBuddha(this).addClass(liClasses["active"]);
							}
						});
					}
					tempMenuObject = {}; /* add theme specific scripts if mega menu added */
					if (disableThemeScript == false) {} /* stop the applyOnClick function from running when you click on search or text fields, so that the submenus won't close when you're on mobile and you click on the search field */
					jQueryBuddha("input[type=\"search\"],input[type=\"text\"]").addClass("stop-mega-menu-reinit"); /* FIXES START */ /* fix for any dl-menu */
					if (jQueryBuddha(".dl-menu").length > 0) {
						setTimeout(function () {
							jQueryBuddha(".toggle-menu-btn").click(function () {
								setTimeout(function () {
									jQueryBuddha(".dl-menu").addClass("dl-menuopen");
								}, 1);
							});
						}, 100);
					} /* Supply Theme more menu fix (for when people have theme_store_id 0) */
					if (typeof timber !== "undefined" && typeof timber.alignMenu !== "undefined") {
						timber.alignMenu = function () {};
					} /* FIXES END */
					var ulPath = getUlPath(jQueryBuddha(this));
					var isSubmenuOfPreviousUlPath = false;
					if (jQueryBuddha.inArray(ulPath, ulPaths) == -1 && !jQueryBuddha(this).hasClass("buddha-hidden-wireframe") && ulPath.indexOf(".buddha-hidden-wireframe") == -1) {
						jQueryBuddha.each(ulPaths, function (index, value) {
							if (ulPath.indexOf(value) !== -1) {
								isSubmenuOfPreviousUlPath = true;
							}
						});
						if (!isSubmenuOfPreviousUlPath) {
							ulPaths[ulPaths.length] = ulPath;
						}
					}
				} else {
					jQueryBuddha(".buddha-transparent").removeClass("buddha-transparent");
				}
			});
			jQueryBuddha(".buddha-disabled-menu").removeClass("buddha-disabled-menu");
			jQueryBuddha.each(ulPaths, function (index, value) {
				reinitMenus(value);
			});
			if (addTouchNew == false) {
				addTouch();
			} else {
				addTouch2();
			}
		}
		if (window.self !== window.top) {
			var preview = parent;
			if (typeof parent.postMessage === "undefined") {
				preview = top;
			}
			preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
		} else if (previewPanelLoaded) {
			document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
		} /* bundle app by smar7 apps fix */
		setTimeout(function () {
			if (typeof mutationExceptions !== "undefined") {
				mutationExceptions.pop();
			}
		}, 100);
	} /* determines if menu should be vertical or horizontal */
	function reinitMenus(ulPath) { /* if(!jQueryBuddha(ulPath).is(":visible") && (typeof jQueryBuddha(ulPath).attr("style")===typeof undefined || jQueryBuddha(ulPath).attr("style").replace(/ /g, "").indexOf("display:none")==-1 || (jQueryBuddha(ulPath).attr("style").replace(/ /g, "").indexOf("display:none")!=-1 && jQueryBuddha(ulPath).css("display")=="none"))) { return; } */
		jQueryBuddha(".submenu-opened").hide();
		var previousItemTop; /* var horizontal = true; */
		var verticalItemsNr = 1;
		jQueryBuddha(ulPath + ">.buddha-menu-item>a").each(function () { /* .offset() is relative to document */
			var currentItemTop = jQueryBuddha(this).offset().top; /* menuitems are positioned one below each other -> mobile rendering */
			previousItemTop = (previousItemTop == undefined) ? currentItemTop : previousItemTop;
			if ((currentItemTop > (previousItemTop + 5)) || (currentItemTop < (previousItemTop - 5))) {
				verticalItemsNr++;
			}
			previousItemTop = currentItemTop;
		}); /* var oldYPosition = 0; var oldXPosition = 0; var increment = 0; jQueryBuddha(ulPath+">.buddha-menu-item").each(function() { var positionY = jQueryBuddha(this).position().top; var positionX = jQueryBuddha(this).position().left; var differenceY = positionY - oldYPosition; var differenceX = positionX - oldXPosition; if(increment>0){ if(differenceY>3 || differenceX<3) { verticalItemsNr++; } } oldYPosition = positionY; oldXPosition = positionX; increment++; }); */
		if ((verticalItemsNr != jQueryBuddha(ulPath + ">.buddha-menu-item").length || (verticalItemsNr == 1 && jQueryBuddha("body").width() > verticalMenuMaxWidth)) && forceMobile == false) { /* if ( verticalItemsNr==1 && forceMobile==false ) { */
			jQueryBuddha(ulPath).addClass("horizontal-mega-menu").removeClass("vertical-mega-menu");
			jQueryBuddha(ulPath + " ul.mm-submenu").removeAttr("style");
			jQueryBuddha(ulPath + " .fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			jQueryBuddha(ulPath + " .submenu-opened").removeClass("submenu-opened");
			jQueryBuddha(ulPath + " .toggle-menu-btn").hide();
			jQueryBuddha(".horizontal-mega-menu>li.buddha-menu-item").off();
			setTimeout(function () {
				jQueryBuddha(ulPath).find(".buddha-menu-item").each(function () {
					setSubmenuBoundries(jQueryBuddha(this));
					setContactSubmenuBoundries(jQueryBuddha(this));
				});
			}, 1);
			jQueryBuddha(ulPath).find(".buddha-menu-item").unbind("onmouseover.simpleContactSubmenuResize");
			jQueryBuddha(ulPath).find(".buddha-menu-item").bind("onmouseover.simpleContactSubmenuResize", function () {
				setSubmenuBoundries(jQueryBuddha(this));
				setContactSubmenuBoundries(jQueryBuddha(this));
			});
			jQueryBuddha(ulPath).find("ul.mm-submenu.tabbed>li").each(function () {
				if (jQueryBuddha(this).parent().find(".tab-opened").length == 0) { /* jQueryBuddha(this).parent().find(".tab-opened").removeClass("tab-opened"); */
					jQueryBuddha(this).addClass("tab-opened");
					setTabbedSubmenuBoundries(jQueryBuddha(this));
				} else if (jQueryBuddha(this).hasClass("tab-opened")) {
					setTabbedSubmenuBoundries(jQueryBuddha(this));
				}
			});
			jQueryBuddha(ulPath).find("ul.mm-submenu.tabbed>li").unbind();
			jQueryBuddha(ulPath).find("ul.mm-submenu.tabbed>li").hover(function () {
				jQueryBuddha(this).parent().find(".tab-opened").removeClass("tab-opened");
				jQueryBuddha(this).addClass("tab-opened");
				setTabbedSubmenuBoundries(jQueryBuddha(this));
			}); /* set first tab of every tabbed submenu be opened */
			jQueryBuddha(ulPath).find("ul.mm-submenu.tabbed>li:first-child").each(function () {
				if (jQueryBuddha(this).parent().find(".tab-opened").length == 0) {
					jQueryBuddha(this).addClass("tab-opened");
					setTabbedSubmenuBoundries(jQueryBuddha(this));
				}
			});
			jQueryBuddha(ulPath).find(".buddha-menu-item").unbind("mouseenter.resizeSubmenus");
			jQueryBuddha(ulPath).find(".buddha-menu-item").bind("mouseenter.resizeSubmenus", function () {
				setSubmenuBoundries(jQueryBuddha(this));
				setContactSubmenuBoundries(jQueryBuddha(this));
				if (jQueryBuddha(this).find(".tab-opened").length > 0) {
					setTabbedSubmenuBoundries(jQueryBuddha(this).find(".tab-opened"));
				}
			});
		} else {
			if (activateMegaMenu) {
				jQueryBuddha(".mega-hover").removeClass("mega-hover");
				jQueryBuddha(".buddha-menu-item.disabled").removeClass("disabled");
				jQueryBuddha(ulPath).addClass("vertical-mega-menu").removeClass("horizontal-mega-menu");
				jQueryBuddha(ulPath + " .toggle-menu-btn").show();
				jQueryBuddha(ulPath).find("li.buddha-menu-item").off();
				jQueryBuddha(ulPath).find("li.buddha-menu-item a").off();
				var iconDistance = parseInt(jQueryBuddha(ulPath + ">li>a").css("font-size"));
				var totalPaddingLeft = parseInt(jQueryBuddha(ulPath + ">li").css("padding-left")) + parseInt(jQueryBuddha(ulPath + ">li>a").css("padding-left"));
				var paddingLeftSubSubmenus = totalPaddingLeft;
				if (totalPaddingLeft > 15) {
					paddingLeftSubSubmenus = 15;
				}
				var totalPaddingTop = parseInt(jQueryBuddha(ulPath + ">li").css("padding-top")) + parseInt(jQueryBuddha(ulPath + ">li>a").css("padding-top"));
				jQueryBuddha("#verticalMenuSpacing").remove();
				var styleSheet = '<style id="verticalMenuSpacing" type="text/css">';
				styleSheet += ulPath + '.vertical-mega-menu>li>ul.mm-submenu.tree>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
				styleSheet += ulPath + '.vertical-mega-menu>li>ul.mm-submenu.tree>li ul.mm-submenu li {padding-left:' + paddingLeftSubSubmenus + 'px !important;padding-right:' + paddingLeftSubSubmenus + 'px !important;}';
				styleSheet += ulPath + '.vertical-mega-menu>li ul.mm-submenu.simple>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
				styleSheet += ulPath + '.vertical-mega-menu>li>ul.mm-submenu.tabbed>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
				styleSheet += ulPath + '.vertical-mega-menu>li>ul.mm-submenu.tabbed>li>ul.mm-submenu>li {padding-left:' + paddingLeftSubSubmenus + 'px !important;padding-right:' + paddingLeftSubSubmenus + 'px !important;}';
				styleSheet += ulPath + '.vertical-mega-menu>li ul.mm-submenu.mm-contact>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
				styleSheet += "</style>";
				jQueryBuddha("head").append(styleSheet); /* remove tab-opened classes */
				jQueryBuddha(ulPath).find(".tab-opened").removeClass("tab-opened");
				jQueryBuddha(ulPath).find(".buddha-menu-item>a>.toggle-menu-btn").unbind("click.resizeSubmenus");
				jQueryBuddha(ulPath).find(".buddha-menu-item>a>.toggle-menu-btn").bind("click.resizeSubmenus", function () {
					setSubmenuBoundries(jQueryBuddha(this).parent().parent());
					setContactSubmenuBoundries(jQueryBuddha(this).parent().parent());
				});
				jQueryBuddha(ulPath).find(".buddha-menu-item>.mm-submenu>li>a>.toggle-menu-btn").unbind("click.resizeTabbedSubmenu");
				jQueryBuddha(ulPath).find(".buddha-menu-item>.mm-submenu>li>a>.toggle-menu-btn").bind("click.resizeTabbedSubmenu", function () {
					if (jQueryBuddha(this).parent().parent().hasClass("mm-hovering")) {
						setTabbedSubmenuBoundries(jQueryBuddha(this).parent().parent());
					}
				});
				forceMobile = false;
			}
		}
		jQueryBuddha(".submenu-opened").show();
		if (panelOpened) {
			jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item").unbind("mouseenter.addMegaHoverClass");
			jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item").bind("mouseenter.addMegaHoverClass", function () {
				jQueryBuddha(".mega-hover").removeClass("mega-hover");
				if (panelOpened) {
					jQueryBuddha(this).addClass("mega-hover");
				}
			});
		} else {
			jQueryBuddha(".mega-hover").removeClass("mega-hover");
		}
	}

	function renderMobileMenuForce(ulPathCustom) {
		jQueryBuddha(".mega-hover").removeClass("mega-hover");
		jQueryBuddha(".buddha-menu-item.disabled").removeClass("disabled");
		jQueryBuddha(ulPathCustom).addClass("vertical-mega-menu").removeClass("horizontal-mega-menu");
		jQueryBuddha(ulPathCustom + " .toggle-menu-btn").show();
		jQueryBuddha(ulPathCustom).find("li.buddha-menu-item").off();
		jQueryBuddha(ulPathCustom).find("li.buddha-menu-item a").off();
		var iconDistance = parseInt(jQueryBuddha(ulPathCustom + ">li>a").css("font-size"));
		var totalPaddingLeft = parseInt(jQueryBuddha(ulPathCustom + ">li").css("padding-left")) + parseInt(jQueryBuddha(ulPathCustom + ">li>a").css("padding-left"));
		var paddingLeftSubSubmenus = totalPaddingLeft;
		if (totalPaddingLeft > 15) {
			paddingLeftSubSubmenus = 15;
		}
		var totalPaddingTop = parseInt(jQueryBuddha(ulPathCustom + ">li").css("padding-top")) + parseInt(jQueryBuddha(ulPathCustom + ">li>a").css("padding-top"));
		jQueryBuddha("#verticalMenuSpacing").remove();
		var styleSheet = '<style id="verticalMenuSpacing" type="text/css">';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li>ul.mm-submenu.tree>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li>ul.mm-submenu.tree>li ul.mm-submenu li {padding-left:' + paddingLeftSubSubmenus + 'px !important;padding-right:' + paddingLeftSubSubmenus + 'px !important;}';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li ul.mm-submenu.simple>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li>ul.mm-submenu.tabbed>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li>ul.mm-submenu.tabbed>li>ul.mm-submenu>li {padding-left:' + paddingLeftSubSubmenus + 'px !important;padding-right:' + paddingLeftSubSubmenus + 'px !important;}';
		styleSheet += ulPathCustom + '.vertical-mega-menu>li ul.mm-submenu.mm-contact>li{padding-left:' + totalPaddingLeft + 'px !important;padding-right:' + totalPaddingLeft + 'px !important;}';
		styleSheet += "</style>";
		jQueryBuddha("head").append(styleSheet);
		jQueryBuddha(ulPathCustom).find(".tab-opened").removeClass("tab-opened");
		jQueryBuddha(ulPathCustom).find(".buddha-menu-item>a>.toggle-menu-btn").unbind("click.resizeSubmenus");
		jQueryBuddha(ulPathCustom).find(".buddha-menu-item>a>.toggle-menu-btn").bind("click.resizeSubmenus", function () {
			setSubmenuBoundries(jQueryBuddha(this).parent().parent());
			setContactSubmenuBoundries(jQueryBuddha(this).parent().parent());
		});
		jQueryBuddha(ulPathCustom).find(".buddha-menu-item>.mm-submenu>li>a>.toggle-menu-btn").unbind("click.resizeTabbedSubmenu");
		jQueryBuddha(ulPathCustom).find(".buddha-menu-item>.mm-submenu>li>a>.toggle-menu-btn").bind("click.resizeTabbedSubmenu", function () {
			if (jQueryBuddha(this).parent().parent().hasClass("mm-hovering")) {
				setTabbedSubmenuBoundries(jQueryBuddha(this).parent().parent());
			}
		});
	} /* GENERATE MENU FUNCTIONS */
	function concatClasses(newClasses, oldClasses) {
		if (oldClasses != "") {
			classes = oldClasses.split(" ");
		} else {
			classes = [];
		}
		if (newClasses != undefined && newClasses != "") {
			newClasses = newClasses.split(" ");
			jQueryBuddha.each(newClasses, function (key, item) {
				if (jQueryBuddha.inArray(item, classes) == -1) {
					classes[classes.length] = item;
				}
			});
		}
		return classes.join(" ");
	}

	function getSpecificClasses(classes) {
		var specificClasses = [];
		if (classes != undefined) {
			classes = classes.split(" ");
			var commonClasses = "";
			jQueryBuddha.each(classes, function (key, item) {
				if (item.indexOf("active") != -1 || item.indexOf("selected") != -1 || item.indexOf("current") != -1) {
					specificClasses["active"] = item;
				} else if (item.indexOf("focus") != -1) {
					specificClasses["focus"] = item;
				} else if (item.indexOf("first") != -1) {
					specificClasses["first"] = item;
				} else if (item.indexOf("last") != -1) {
					specificClasses["last"] = item;
				} else if (item.indexOf("buddha") == -1 && item.indexOf("dropdown") == -1 && item.indexOf("mm-subopen") == -1 && item.indexOf("hidden") == -1 && item.indexOf("hide") == -1) {
					commonClasses += " " + item;
				}
			});
			specificClasses["common"] = commonClasses.trim();
		}
		return specificClasses;
	} /* used to generate submenus */
	function addSubMenus(parentItem, isSubTree) {
		var submenuHtml = "";
		if (parentItem.items != undefined && parentItem.items.length > 0) {
			if (parentItem.type == "link-list-image") {
				submenuHtml += "<ul class=\"mm-product-list\">";
				jQueryBuddha.each(parentItem.items, function (pos, subitem) {
					var href = (subitem.id != undefined && schemaLinksJSON[subitem.link] && schemaLinksJSON[subitem.link][subitem.id]) ? schemaLinksJSON[subitem.link][subitem.id] : schemaLinksJSON[subitem.link];
					var useOnClick = "";
					if (window.self == window.top || (window.self !== window.top && window.name == "mega-menu-iframe")) {
						useOnClick = "onclick=\"return mmGoToPage(this)\"";
					}
					if (subitem.link == "product" || subitem.link == "collection" || subitem.link == "article") {
						var image = "";
						if (subitem.link == "product" && productImages[subitem.id] != undefined && productImages[subitem.id].indexOf("no-image") == -1) {
							image = "<div class=\"mm-list-image\"><a data-href=\"" + href + "\" href=\"" + href + "\" " + useOnClick + "\"><img src=\"" + productImages[subitem.id] + "\"></a></div>";
						} else if (subitem.link == "collection" && collectionImages[subitem.id] != undefined && collectionImages[subitem.id].indexOf("no-image") == -1) {
							image = "<div class=\"mm-list-image\"><a data-href=\"" + href + "\" href=\"" + href + "\" " + useOnClick + "\"><img src=\"" + collectionImages[subitem.id] + "\"></a></div>";
							"<div class=\"mm-list-image\"><img src=\"" + collectionImages[subitem.id] + "\"></div>";
						} else if (subitem.image != undefined) {
							if (subitem.link == "article" && subitem.image.indexOf("/articles/") !== -1 && subitem.image.indexOf("_240x") == -1) {
								subitem.image = subitem.image.replace(".jpg", "_240x.jpg").replace(".png", "_240x.png");
							}
							image = "<div class=\"mm-list-image\"><a data-href=\"" + href + "\" href=\"" + href + "\" " + useOnClick + "\"><img src=\"" + subitem.image + "\"></a></div>";
						} else {
							image = "<div class=\"mm-list-image\"></div>";
						}
						var listInfo = "";
						if (jQueryBuddha.trim(subitem.name) != "") {
							listInfo = "<div class=\"mm-list-info\"><a data-href=\"" + href + "\" class=\"mm-product-name\" href=\"" + href + "\">" + subitem.name.replace(/"/g, '"') + "</a><br>";
						}
						if (subitem.link == "product" && subitem.id != undefined && prices[subitem.id] != undefined) {
							listInfo += "<div class=\"mega-menu-prices\">" + prices[subitem.id] + "</div>";
						}
						submenuHtml += "<li>" + image + listInfo + "</div>";
					}
					submenuHtml += "</li>";
				});
				submenuHtml += "</ul>";
			} else {
				var subMenuType = (parentItem.type != undefined) ? " " + parentItem.type : "";
				submenuHtml += "<ul class=\"mm-submenu" + subMenuType + "\">";
				jQueryBuddha.each(parentItem.items, function (pos, subitem) {
					if (subitem.link == "no-link") {
						var dataHref = "no-link";
						var href = "#";
					} else if (subitem.link == "http") {
						var dataHref = subitem.http;
						var href = subitem.http;
					} else {
						var dataHref = (subitem.id != undefined && schemaLinksJSON[subitem.link] && schemaLinksJSON[subitem.link][subitem.id]) ? schemaLinksJSON[subitem.link][subitem.id] : schemaLinksJSON[subitem.link];
						var href = (subitem.id != undefined && schemaLinksJSON[subitem.link] && schemaLinksJSON[subitem.link][subitem.id]) ? schemaLinksJSON[subitem.link][subitem.id] : schemaLinksJSON[subitem.link];
					}
					var useOnClick = "";
					if (window.self == window.top || (window.self !== window.top && window.name == "mega-menu-iframe")) {
						useOnClick = "onclick=\"return mmGoToPage(this)\"";
					}
					if (parentItem.type == "simple") {
						if (subitem.link == "best-sellers") {
							submenuHtml += "<li><div class=\"mega-menu-item-container\"><div class=\"mm-list-name\"><span>" + subitem.name.replace(/"/g, '"') + "</span></div>" + bestSellersHTML + "</div>";
						} else if (subitem.link == "newest-products") {
							submenuHtml += "<li><div class=\"mega-menu-item-container\"><div class=\"mm-list-name\"><span>" + subitem.name.replace(/"/g, '"') + "</span></div>" + newestProductsHTML + "</div>";
						} else if (subitem.link == "link-list") {
							subitem.type = "link-list";
							var linkList = addSubMenus(subitem);
							submenuHtml += "<li><div class=\"mega-menu-item-container\"><div class=\"mm-list-name\"><span>" + subitem.name.replace(/"/g, '"') + "</span></div>" + linkList + "</div>";
						} else if (subitem.link == "link-list-image") {
							subitem.type = "link-list-image";
							var linkListImage = addSubMenus(subitem);
							submenuHtml += "<li><div class=\"mega-menu-item-container\"><div class=\"mm-list-name\"><span class=\"name\">" + subitem.name.replace(/"/g, '"') + "</span></div>" + linkListImage + "</div>";
						} else {
							var image = "";
							if (subitem.link == "product" && productImages[subitem.id] != undefined && productImages[subitem.id].indexOf("no-image") == -1) {
								image = "<div class=\"mm-image-container\"><div class=\"mm-image\"><a data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\"><img src=\"" + productImages[subitem.id] + "\"></a></div></div>";
							} else if (subitem.link == "collection" && collectionImages[subitem.id] != undefined && collectionImages[subitem.id].indexOf("no-image") == -1) {
								image = "<div class=\"mm-image-container\"><div class=\"mm-image\"><a data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\"><img src=\"" + collectionImages[subitem.id] + "\"></a></div></div>";
							} else if (subitem.image != undefined) {
								if (subitem.link == "article" && subitem.image.indexOf("/articles/") !== -1 && subitem.image.indexOf("_240x") == -1) {
									subitem.image = subitem.image.replace(".jpg", "_240x.jpg").replace(".png", "_240x.png");
								}
								image = "<div class=\"mm-image-container\"><div class=\"mm-image\"><a data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\"><img src=\"" + subitem.image + "\"></a></div></div>";
							}
							var pricesHTML = "";
							if (subitem.link == "product" && subitem.id != undefined && prices[subitem.id] != undefined) {
								pricesHTML = "<div class=\"mega-menu-prices\">" + prices[subitem.id] + "</div>";
							}
							var nameHtml = "";
							if (jQueryBuddha.trim(subitem.name) != "") {
								nameHtml += "<a class=\"mm-featured-title\" data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\">" + subitem.name.replace(/"/g, '"') + "</a>";
							}
							submenuHtml += "<li><div class=\"mega-menu-item-container\">" + image + nameHtml + pricesHTML + "</div>";
						}
					} else if (parentItem.type == "tree" || isSubTree) {
						submenuHtml += "<li data-href=\"" + dataHref + "\" " + useOnClick + "><a data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\">" + subitem.name.replace(/"/g, '"') + "</a>";
					} else {
						submenuHtml += "<li><a data-href=\"" + dataHref + "\" href=\"" + href + "\" " + useOnClick + " aria-label=\"" + jQueryBuddha("<div/>").html(subitem.name.replace(/"/g, '"')).text() + "\">" + subitem.name.replace(/"/g, '"') + "</a>";
					} /* set the simple menu type for each tab child */
					if (parentItem.type == "tabbed") {
						subitem.type = "simple";
					}
					if (subitem.link != "link-list" && subitem.link != "link-list-image") {
						if (parentItem.type == "tree" || isSubTree) {
							submenuHtml += addSubMenus(subitem, true);
						} else {
							submenuHtml += addSubMenus(subitem, false);
						}
					}
					submenuHtml += "</li>";
				});
				submenuHtml += "</ul>";
			}
		}
		return submenuHtml;
	} /* TOOLTIP FUNCTIONS */
	function undoAction() {
		currentUndo = undo[undo.length - 1];
		if (currentUndo.action == "design") {
			redo.unshift(currentUndo);
			schemaDesignJSON.splice(-1, 1);
			undo.splice(-1, 1);
			recreateDesign();
		}
		reinitMenus(); /* if no mega menu present, remove theme scripts */
		if (jQueryBuddha(".buddha-menu-item").length == 0) {
			jQueryBuddha("#themeScript").remove();
		}
		if (window.self !== window.top) {
			var preview = parent;
			if (typeof parent.postMessage === "undefined") {
				preview = top;
			}
			preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
		} else if (previewPanelLoaded) {
			document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
		} /*}*/
	}

	function redoAction() {
		tempMenuObject = {};
		jQueryBuddha(".buddha-transparent").removeClass("buddha-transparent");
		action = redo[0].action;
		if (action == "design") {
			schemaDesignJSON.push(redo[0]);
			undo.push(redo[0]);
			recreateDesign();
		}
		redo.splice(0, 1);
		reinitMenus(); /* if no mega menu present, remove theme scripts */
		if (jQueryBuddha(".buddha-menu-item").length == 0) {
			jQueryBuddha("#themeScript").remove();
		}
		if (window.self !== window.top) {
			var preview = parent;
			if (typeof parent.postMessage === "undefined") {
				preview = top;
			}
			preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
		} else if (previewPanelLoaded) {
			document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
		} /*}*/
	}

	function clearAction() {
		jQueryBuddha.each(undo, function (key, item) {
			undoAction();
		});
		redo = []; /* if no mega menu present, remove theme scripts */
		if (jQueryBuddha(".buddha-menu-item").length == 0) {
			jQueryBuddha("#themeScript").remove();
		}
		if (window.self !== window.top) {
			var preview = parent;
			if (typeof parent.postMessage === "undefined") {
				preview = top;
			}
			preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
		} else if (previewPanelLoaded) {
			document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
		} /*}*/
	} /* DESIGN */ /* .vertical-mega-menu li a ,.vertical-mega-menu li.fa */ /* var propSettings = {"background_color":{element:".horizontal-mega-menu ul.mm-submenu, .horizontal-mega-menu>li>ul.mm-submenu.tabbed>li>ul.mm-submenu li,.horizontal-mega-menu li.buddha-menu-item:hover ul.mm-submenu.simple li:hover, .horizontal-mega-menu li.buddha-menu-item.mega-hover ul.mm-submenu.simple li:hover",attribute:"background"},"background_hover_color":{element:".horizontal-mega-menu ul.mm-submenu.tree li:hover, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened",attribute:"background"},"text_color":{element:".horizontal-mega-menu ul.mm-submenu,.horizontal-mega-menu ul.mm-submenu li,.horizontal-mega-menu ul.mm-submenu h3",attribute:"color"},"link_color":{element:".horizontal-mega-menu ul.mm-submenu li a,.horizontal-mega-menu ul.mm-submenu li.fa",attribute:"color"},"link_hover_color":{element:".horizontal-mega-menu ul.mm-submenu.tree li:hover>a, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover>a, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened>a, .horizontal-mega-menu ul.mm-submenu li a:hover, .horizontal-mega-menu ul.mm-submenu.tree li.fa:hover:before, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover.fa:before, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened.fa:before",attribute:"color"},"font_size":{element:".horizontal-mega-menu ul.mm-submenu",attribute:"font-size"},"button_background_color":{element:"ul.mm-submenu li.mm-contact-column button",attribute:"background"},"button_background_hover_color":{element:"ul.mm-submenu li.mm-contact-column button:hover",attribute:"background"},"button_text_color":{element:"ul.mm-submenu li.mm-contact-column button",attribute:"color"},"button_text_hover_color":{element:"ul.mm-submenu li.mm-contact-column button:hover",attribute:"color"},"vertical_text_color":{element:".vertical-mega-menu ul.mm-submenu,.vertical-mega-menu ul.mm-submenu h3",attribute:"color"},"vertical_link_color":{element:".vertical-mega-menu ul.mm-submenu li a, .vertical-mega-menu ul.mm-submenu>li>a>.toggle-menu-btn>.fa",attribute:"color"},"vertical_link_hover_color":{element:".vertical-mega-menu ul.mm-submenu>li:hover>a, .vertical-mega-menu ul.mm-submenu.tree li:hover>a, .vertical-mega-menu ul.mm-submenu.tree li.mega-hover>a, .vertical-mega-menu ul.mm-submenu.tabbed>li.tab-opened>a, .vertical-mega-menu ul.mm-submenu li a:hover, .vertical-mega-menu ul.mm-submenu.tree li:hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tree li.mm-hovering>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tree li.mega-hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tabbed>li.mm-hovering>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tabbed>li:hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu li.mm-hovering>a",attribute:"color"},"vertical_font_size":{element:".vertical-mega-menu ul.mm-submenu,.vertical-mega-menu ul.mm-submenu.simple>li ul.mm-product-list>li .mm-list-info",attribute:"font-size"!!}; */
	var propSettings = {
		"background_color": {
			element: ".horizontal-mega-menu ul.mm-submenu, .horizontal-mega-menu>li>ul.mm-submenu.tabbed>li>ul.mm-submenu li,.horizontal-mega-menu li.buddha-menu-item:hover ul.mm-submenu.simple li:hover, .horizontal-mega-menu li.buddha-menu-item.mega-hover ul.mm-submenu.simple li:hover",
			attribute: "background"
		},
		"background_hover_color": {
			element: ".horizontal-mega-menu ul.mm-submenu.tree li:hover, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened",
			attribute: "background"
		},
		"text_color": {
			element: ".horizontal-mega-menu ul.mm-submenu,.horizontal-mega-menu ul.mm-submenu li,.horizontal-mega-menu ul.mm-submenu h3",
			attribute: "color"
		},
		"link_color": {
			element: ".horizontal-mega-menu ul.mm-submenu li a,.horizontal-mega-menu ul.mm-submenu li.fa, .horizontal-mega-menu ul.mm-submenu.tree li:hover>a[data-href=\"no-link\"], .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover>a[data-href=\"no-link\"], .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened>a[data-href=\"no-link\"], .horizontal-mega-menu ul.mm-submenu li a[data-href=\"no-link\"]:hover",
			attribute: "color"
		},
		"link_hover_color": {
			element: ".horizontal-mega-menu ul.mm-submenu.tree li:hover>a, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover>a, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened>a, .horizontal-mega-menu ul.mm-submenu li a:hover, .horizontal-mega-menu ul.mm-submenu.tree li.fa:hover:before, .horizontal-mega-menu ul.mm-submenu.tree li.mega-hover.fa:before, .horizontal-mega-menu ul.mm-submenu.tabbed>li.tab-opened.fa:before",
			attribute: "color"
		},
		"font_size": {
			element: ".horizontal-mega-menu ul.mm-submenu,.horizontal-mega-menu ul.mm-submenu a",
			attribute: "font-size"
		},
		"button_background_color": {
			element: "ul.mm-submenu li.mm-contact-column button",
			attribute: "background"
		},
		"button_background_hover_color": {
			element: "ul.mm-submenu li.mm-contact-column button:hover",
			attribute: "background"
		},
		"button_text_color": {
			element: "ul.mm-submenu li.mm-contact-column button",
			attribute: "color"
		},
		"button_text_hover_color": {
			element: "ul.mm-submenu li.mm-contact-column button:hover",
			attribute: "color"
		},
		"vertical_text_color": {
			element: ".vertical-mega-menu ul.mm-submenu,.vertical-mega-menu ul.mm-submenu h3",
			attribute: "color"
		},
		"vertical_link_color": {
			element: ".vertical-mega-menu ul.mm-submenu li a, .vertical-mega-menu ul.mm-submenu>li>a>.toggle-menu-btn>.fa",
			attribute: "color"
		},
		"vertical_link_hover_color": {
			element: ".vertical-mega-menu ul.mm-submenu>li:hover>a, .vertical-mega-menu ul.mm-submenu.tree li:hover>a, .vertical-mega-menu ul.mm-submenu.tree li.mega-hover>a, .vertical-mega-menu ul.mm-submenu.tabbed>li.tab-opened>a, .vertical-mega-menu ul.mm-submenu li a:hover, .vertical-mega-menu ul.mm-submenu.tree li:hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tree li.mm-hovering>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tree li.mega-hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tabbed>li.mm-hovering>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu.tabbed>li:hover>a>.toggle-menu-btn>.fa:before, .vertical-mega-menu ul.mm-submenu li.mm-hovering>a",
			attribute: "color"
		},
		"vertical_font_size": {
			element: ".vertical-mega-menu ul.mm-submenu,.vertical-mega-menu ul.mm-submenu.simple>li ul.mm-product-list>li .mm-list-info",
			attribute: "font-size"
		},
		"font_family": {
			element: ".horizontal-mega-menu ul.mm-submenu,.horizontal-mega-menu ul.mm-submenu li a,ul.mm-submenu a,.vertical-mega-menu ul.mm-submenu,.vertical-mega-menu ul.mm-submenu li a,ul.mm-submenu li.mm-contact-column h3",
			attribute: "font-family"
		},
		"countdown_color": {
			element: ".buddha-menu-item-countdown .inn",
			attribute: "color"
		},
		"countdown_background_color": {
			element: ".buddha-menu-item-countdown .inn,.buddha-menu-item-countdown .up::after,.buddha-menu-item-countdown .flip-clock-dot",
			attribute: "background"
		},
		"countdown_menu_color": {
			element: ".buddha-menu-item[countdown] > a",
			attribute: "color"
		}
	};

	function liveDesign(setting, value) { /* jQueryBuddha(propSettings[setting].element).css(propSettings[setting].attribute,value); */
		jQueryBuddha("#tempStyle").remove();
		var styleSheet = '<style id="tempStyle" type="text/css">';
		styleSheet += propSettings[setting].element + '{' + propSettings[setting].attribute + ':' + value + ' !important; }'; /* add further css styling logic */
		styleSheet += customPropSettingsStyles(setting, value);
		styleSheet += "</style>";
		jQueryBuddha("head").append(styleSheet); /*}*/
	}
	var reinitAfterDesignTimeout;

	function updateDesign(setting, value) {
		jQueryBuddha("#tempStyle").remove();
		item = {};
		item.action = "design";
		item.setting = setting;
		item.value = value;
		defaultFontSelected = false;
		if (item.setting == "font_family" && item.value == "Default") {
			defaultFontSelected = true;
		}
		schemaDesignJSON.push(item);
		undo.push(item); /* jQueryBuddha(propSettings[setting].element).css(propSettings[setting].attribute,""); */
		recreateDesign();
		if (setting == "font_size" || setting == "font_family") {
			jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item>.mm-submenu").each(function () {
				if (parseInt(jQueryBuddha(this).css("top")) > 0) {
					setSubmenuBoundries(jQueryBuddha(this).parent());
					setContactSubmenuBoundries(jQueryBuddha(this).parent());
					if (jQueryBuddha(this).hasClass("tabbed")) {
						setTabbedSubmenuBoundries(jQueryBuddha(this).find(">li.tab-opened"));
					}
				}
			});
		}
		clearTimeout(reinitAfterDesignTimeout);
		reinitAfterDesignTimeout = setTimeout(function () {
			reinitMenus();
		}, 100);
		redo = [];
		if (window.self !== window.top) {
			var preview = parent;
			if (typeof parent.postMessage === "undefined") {
				preview = top;
			}
			preview.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "*");
		} else if (previewPanelLoaded) {
			document.getElementById("mega-menu-iframe").contentWindow.postMessage(["updateToolbar", JSON.stringify(schemaDesignJSON), JSON.stringify(linkLists), JSON.stringify(undo), JSON.stringify(redo), changedMenu], "https://buddhaapps.com");
		} /*}*/
	}

	function recreateDesign() {
		jQueryBuddha("#previewStyle").remove();
		var styleSheet = '<style id="previewStyle" type="text/css">';
		jQueryBuddha.each(schemaDesignJSON, function (key, item) {
			if (item.action == "design" && propSettings[item.setting] != undefined) {
				if (item.setting == "font_size") {
					fontSize = parseInt(item.value);
				} else if (item.setting == "font_family") {
					jQueryBuddha("#googleFontDesign").remove();
					if (item.value != "Default" && item.value != "Arial" && item.value != "Georgia" && item.value != "Tahoma" && item.value != "Trebuchet MS" && item.value != "Times New Roman" && item.value != "Verdana") {
						var googleStyleSheet = '<link href="//fonts.googleapis.com/css?family=' + item.value + '" id="googleFontDesign" rel="stylesheet" type="text/css">';
						jQueryBuddha("head").append(googleStyleSheet);
					}
				}
				if (item.setting != "font_family" || (item.setting == "font_family" && !defaultFontSelected && item.value != "Default")) {
					styleSheet += propSettings[item.setting].element + '{' + propSettings[item.setting].attribute + ':' + item.value + ' !important; }';
				} /* add further css styling logic*/
				styleSheet += customPropSettingsStyles(item.setting, item.value);
			} else if (item.action == "design" && item.setting == "tree_sub_direction") {
				setTreeDirection = item.value;
				jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item>.mm-submenu.tree").each(function () {
					setSubmenuBoundries(jQueryBuddha(this).parent());
				});
			}
		});
		styleSheet += "</style>";
		jQueryBuddha("head").append(styleSheet);
	}

	function designPanelOpened() {
		panelOpened = true;
		if (jQueryBuddha("ul.mm-submenu.tabbed").length > 0) {
			jQueryBuddha(".horizontal-mega-menu:visible>.buddha-menu-item>ul.mm-submenu.tabbed").each(function () {
				jQueryBuddha(this).closest(".buddha-menu-item").addClass("mega-hover");
				return false;
			});
		} else if (jQueryBuddha("ul.mm-submenu.simple").length > 0) {
			jQueryBuddha(".horizontal-mega-menu:visible>.buddha-menu-item>ul.mm-submenu.simple").each(function () {
				jQueryBuddha(this).closest(".buddha-menu-item").addClass("mega-hover");
				return false;
			});
		} else if (jQueryBuddha("ul.mm-submenu.contact").length > 0) {
			jQueryBuddha(".horizontal-mega-menu:visible>.buddha-menu-item>ul.mm-submenu.contact").each(function () {
				jQueryBuddha(this).closest(".buddha-menu-item").addClass("mega-hover");
				return false;
			});
		} else if (jQueryBuddha("ul.mm-submenu.tree").length > 0) {
			jQueryBuddha(".horizontal-mega-menu:visible>.buddha-menu-item>ul.mm-submenu.tree").each(function () {
				jQueryBuddha(this).closest(".buddha-menu-item").addClass("mega-hover");
				return false;
			});
		}
		setSubmenuBoundries(jQueryBuddha(".buddha-menu-item.mega-hover"));
		setContactSubmenuBoundries(jQueryBuddha(".buddha-menu-item.mega-hover"));
		if (jQueryBuddha("ul.mm-submenu.tabbed").length > 0) {
			setTabbedSubmenuBoundries(jQueryBuddha(".buddha-menu-item.mega-hover>ul.mm-submenu.tabbed>li:first-child"));
		}
		jQueryBuddha(".horizontal-mega-menu>.buddha-menu-item").hover(function () {
			jQueryBuddha(".mega-hover").removeClass("mega-hover");
			if (panelOpened) {
				jQueryBuddha(this).addClass("mega-hover");
			}
		});
	}

	function designPanelClosed() {
		panelOpened = false;
		jQueryBuddha(".mega-hover").removeClass("mega-hover");
	}
	window.addEventListener("message", function (event) { /* if (window.self!==window.top) { */
		if (~event.origin.indexOf("megamenu.buddhaapps.com")) {
			if (typeof event.data == "object") {
				if (event.data[0] == "applyMegaMenu") {
					window[event.data[0]](event.data[1]);
				} else if (jQueryBuddha.inArray(event.data[0], ["undoAction", "redoAction", "clearAction", "initSaving", "designPanelOpened", "designPanelClosed"]) !== -1) {
					window[event.data[0]]();
				} else if (jQueryBuddha.inArray(event.data[0], ["liveDesign", "updateDesign"]) !== -1) {
					window[event.data[0]](event.data[1], event.data[2]);
				}
			} else {
				window[event.data]();
			}
		}
	}); /* PAGE UNLOADING FUNCTIONS */
	function initSaving() {
		jQueryBuddha(".buddha-loader-wrapper").show();
		jQueryBuddha(".buddha-loader-text").show();
		saving = true;
	} /* STORE FRONT FUNCTIONS */ /* used to open/close the vertical menu */
	function toggleSubmenu(element) {
		submenuToggled = true;
		var submenu = jQueryBuddha(element).closest("li").find("ul.mm-submenu").first();
		if (!submenu.hasClass("submenu-opened")) {
			jQueryBuddha(element).closest("li").addClass("mm-hovering");
			jQueryBuddha(element).find(">.fa").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			submenu.addClass("submenu-opened");
		} else {
			jQueryBuddha(element).closest("li").removeClass("mm-hovering");
			jQueryBuddha(element).find(">.fa").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			submenu.removeClass("submenu-opened");
		}
		setTimeout(function () {
			submenuToggled = false;
		}, 100);
		jQueryBuddha(document).trigger("toggleSubmenu", [element]);
		return false;
	}

	function mmGoToPage(element, e) {
		if (!changingPage && !submenuToggled) {
			var hostName = window.location.hostname.replace('www.', '');
			var finalhost = hostName.substr(0, hostName.indexOf(".")) + ".";
			if (jQueryBuddha(element).attr("data-href") != "no-link") {
				if (jQueryBuddha(element).attr("data-href").indexOf("http") !== -1 && (jQueryBuddha(element).attr("data-href").indexOf(finalhost) === -1 && jQueryBuddha(element).attr("data-href").indexOf("myshopify.com") === -1)) {
					changingPage = true;
					var win = window.open(jQueryBuddha(element).attr("data-href"), "_blank");
					win.focus();
					setTimeout(function () {
						changingPage = false;
					}, 300);
				} else {
					changingPage = true;
					window.location = jQueryBuddha(element).attr("data-href");
					setTimeout(function () {
						changingPage = false;
					}, 1000);
				}
			} else {
				e.stopPropagation();
			}
		}
		return false;
	} /* set the boundries of the submenus */
	function setSubmenuBoundries(li) {
		var bodyWidth = jQueryBuddha("body").width();
		var headerOffset = 1000;
		if (jQueryBuddha(li).find(">ul.mm-submenu.simple").length > 0 || jQueryBuddha(li).find(">ul.mm-submenu.tabbed").length > 0) {
			if (jQueryBuddha(li).closest(".horizontal-mega-menu").length > 0) { /* get header offset */ /* IF YOU REMOVE .parent(). IT WILL AFFECT THE MENU FROM alex-woo-jewelry.myshopify.com */
				jQueryBuddha(li).parent().parents().each(function () {
					var offsetLeft = jQueryBuddha(this).offset().left + parseInt(jQueryBuddha(this).css("padding-left"));
					if (offsetLeft < headerOffset && offsetLeft > 0) {
						headerOffset = offsetLeft;
					}
				});
				if (headerOffset == 1000 || bodyWidth <= 768) {
					headerOffset = 0;
				} /* if (customHeaderOffset && customHeaderOffset<bodyWidth) { headerOffset = (bodyWidth-customHeaderOffset)/2; } MADE THE BELOW MODIFICATION FOR CLIENT https://www.mwfundraising.com/ */
				if (customHeaderOffset) {
					if (customHeaderOffset < bodyWidth) {
						headerOffset = (bodyWidth - customHeaderOffset) / 2;
					} else {
						headerOffset = 0;
					}
				} /* set menu width */
				if (jQueryBuddha(li).find(">ul.mm-submenu.simple").length > 0) {
					var submenu = jQueryBuddha(li).find(">ul.mm-submenu.simple");
				} else {
					var submenu = jQueryBuddha(li).find(">ul.mm-submenu.tabbed");
				}
				submenu.css({
					"width": "auto",
					"left": "auto",
					"right": "auto"
				}); /*submenu.removeAttr("style"); submenu.find(">li").removeAttr("style");*/
				if (headerOffset * 2 > bodyWidth) {
					headerOffset = 0;
				}
				var headerWidth = bodyWidth - headerOffset * 2;
				var itemsPerRow = 5;
				if (headerWidth >= 1020) { /* submenu.attr("columns",5).css("width",headerWidth+"px"); */
					var style = submenu.attr("columns", 5).attr("style");
					style += "width:" + headerWidth + "px !important;";
					submenu.attr("style", style);
					itemsPerRow = 5;
				} else if (headerWidth >= 816) {
					var style = submenu.attr("columns", 4).attr("style");
					style += "width:" + headerWidth + "px !important;";
					submenu.attr("style", style);
					itemsPerRow = 4;
				} else if (headerWidth >= 612) {
					var style = submenu.attr("columns", 3).attr("style");
					style += "width:" + headerWidth + "px !important;";
					submenu.attr("style", style);
					itemsPerRow = 3;
				} else {
					var style = submenu.attr("columns", 2).attr("style");
					style += "width:" + headerWidth + "px !important;";
					submenu.attr("style", style);
					itemsPerRow = 2;
				}
				if (jQueryBuddha(li).find(">ul.mm-submenu.tabbed").length > 0) {
					--itemsPerRow;
				} /* set simple submenu boundry */
				var offsetLeft = jQueryBuddha(li).offset().left + jQueryBuddha(li).outerWidth() / 2;
				if (offsetLeft < (bodyWidth / 2)) {
					var left = bodyWidth - (bodyWidth - jQueryBuddha(li).offset().left) - headerOffset;
					submenu.css("left", -left + "px");
				} else {
					var right = bodyWidth - jQueryBuddha(li).offset().left - jQueryBuddha(li).outerWidth() - headerOffset;
					submenu.css("right", -right + "px");
				} /* set min height for each element */
				jQueryBuddha(li).find("ul.mm-submenu.simple>li").removeAttr("style");
				jQueryBuddha(li).find(".mm-list-name").removeAttr("style"); /* if simple menu */
				if (jQueryBuddha(li).find(">ul.mm-submenu.simple").length > 0) {
					var rowMinHeight = 0;
					var mmListNameHeight = 0;
					if (fontSize <= 14) {
						fontSize = 8;
					} else if (fontSize > 14 && fontSize <= 18) {
						fontSize += 6;
					} else if (fontSize > 18 && fontSize <= 20) {
						fontSize += 10;
					}
					jQueryBuddha(li).find("ul.mm-submenu.simple>li").each(function (i, item) {
						if (i % itemsPerRow == 0) {
							rowMinHeight = 0;
							mmListNameHeight = 0;
						}
						if (jQueryBuddha(this).find(".mm-list-name").length > 0) {
							if (jQueryBuddha(this).find(".mm-list-name").height() > mmListNameHeight) {
								mmListNameHeight = jQueryBuddha(this).find(".mm-list-name").height();
								jQueryBuddha(this).find(".mm-list-name").css("height", mmListNameHeight);
								var previousItems = i;
								if (previousItems % itemsPerRow != 0) {
									while (previousItems % itemsPerRow != 0) {
										jQueryBuddha(li).find("ul.mm-submenu.simple").find(">li:nth-child(" + previousItems + ")").find(".mm-list-name").css("height", mmListNameHeight);
										previousItems--;
									}
								}
							} else {
								jQueryBuddha(this).find(".mm-list-name").css("height", mmListNameHeight);
							}
						}
						if (jQueryBuddha(this).outerHeight() > rowMinHeight) {
							rowMinHeight = jQueryBuddha(this).outerHeight();
							jQueryBuddha(this).css("min-height", rowMinHeight + fontSize);
							var previousItems = i;
							if (previousItems % itemsPerRow != 0) {
								while (previousItems % itemsPerRow != 0) {
									jQueryBuddha(li).find("ul.mm-submenu.simple").find(">li:nth-child(" + previousItems + ")").css("min-height", rowMinHeight + fontSize);
									previousItems--;
								}
							}
						} else {
							jQueryBuddha(this).css("min-height", rowMinHeight + fontSize);
						}
					}); /* if tabbed menu */
				} else {
					jQueryBuddha(li).find("ul.mm-submenu.tabbed>li").each(function (i, tab) {
						var rowMinHeight = 0;
						var mmListNameHeight = 0;
						if (fontSize <= 14) {
							fontSize = 6;
						} else if (fontSize > 14 && fontSize <= 18) {
							fontSize += 2;
						} else if (fontSize > 18 && fontSize <= 20) {
							fontSize += 6;
						}
						jQueryBuddha(tab).find("ul.mm-submenu.simple>li").each(function (j, item) {
							if (j % itemsPerRow == 0) {
								rowMinHeight = 0;
								mmListNameHeight = 0;
							}
							if (jQueryBuddha(this).find(".mm-list-name").length > 0) {
								if (jQueryBuddha(this).find(".mm-list-name").height() > mmListNameHeight) {
									mmListNameHeight = jQueryBuddha(this).find(".mm-list-name").height();
									jQueryBuddha(this).find(".mm-list-name").css("height", mmListNameHeight);
									var previousItems = j;
									if (previousItems % itemsPerRow != 0) {
										while (previousItems % itemsPerRow != 0) {
											jQueryBuddha(this).parent().find(">li:nth-child(" + previousItems + ")").find(".mm-list-name").css("height", mmListNameHeight);
											previousItems--;
										}
									}
								} else {
									jQueryBuddha(this).find(".mm-list-name").css("height", mmListNameHeight);
								}
							}
							if (jQueryBuddha(this).outerHeight() > rowMinHeight) {
								rowMinHeight = jQueryBuddha(this).outerHeight();
								jQueryBuddha(this).css("min-height", rowMinHeight + fontSize);
								var previousItems = j;
								if (previousItems % itemsPerRow != 0) {
									while (previousItems % itemsPerRow != 0) {
										jQueryBuddha(tab).find(">ul.mm-submenu.simple").find(">li:nth-child(" + previousItems + ")").css("min-height", rowMinHeight + fontSize);
										previousItems--;
									}
								}
							} else {
								jQueryBuddha(this).css("min-height", rowMinHeight + fontSize);
							}
						});
					}); /* add arrows */
					jQueryBuddha(li).find("ul.mm-submenu.tabbed>li").addClass("fa fa-angle-right");
				}
			} else {
				jQueryBuddha(li).find("ul.mm-submenu.tabbed").css({
					"left": "auto",
					"right": "auto"
				});
				var currentStyle = jQueryBuddha(li).find("ul.mm-submenu.tabbed").attr("style");
				var newStyle = "";
				if (currentStyle != undefined) {
					newStyle += currentStyle + ";height:auto !important;width:auto !important";
				} else {
					newStyle += "height:auto !important;width:auto !important";
				}
				jQueryBuddha(li).find("ul.mm-submenu.tabbed").attr("style", newStyle);
				jQueryBuddha(li).find("ul.mm-submenu.simple").css({
					"left": "auto",
					"right": "auto"
				});
				var currentStyle = jQueryBuddha(li).find("ul.mm-submenu.simple").attr("style");
				var newStyle = "";
				if (currentStyle != undefined) {
					newStyle += currentStyle + ";width:auto !important";
				} else {
					newStyle += ";width:auto !important";
				}
				jQueryBuddha(li).find("ul.mm-submenu.simple").attr("style", newStyle);
				jQueryBuddha(li).find("ul.mm-submenu.simple>li").removeAttr("style");
				if (jQueryBuddha(li).width() >= 700) {
					jQueryBuddha(li).find("ul.mm-submenu.simple").attr("columns", 3);
					jQueryBuddha(".vertical-mega-menu ul.mm-submenu.mm-contact").attr("columns", 2);
				} else if (jQueryBuddha(li).width() >= 500) {
					jQueryBuddha(li).find("ul.mm-submenu.simple").attr("columns", 2);
					jQueryBuddha(".vertical-mega-menu ul.mm-submenu.mm-contact").attr("columns", 2);
				} else {
					jQueryBuddha(li).find("ul.mm-submenu.simple").removeAttr("columns");
					jQueryBuddha(".vertical-mega-menu ul.mm-submenu.mm-contact").removeAttr("columns");
				}
			}
		} else if (jQueryBuddha(li).find("ul.mm-submenu.tree").length > 0) {
			jQueryBuddha(li).find("ul.mm-submenu").removeAttr("style"); /* tree direction var start if(setTreeDirection == "set_tree_right") { jQueryBuddha(li).find("ul.mm-submenu").removeClass("tree-open-left"); jQueryBuddha(li).find("ul.mm-submenu.tree li").removeClass("fa fa-angle-right fa-angle-left"); jQueryBuddha(li).find("ul.mm-submenu.tree li").each(function(){ if (jQueryBuddha(this).find("ul.mm-submenu").length>0) { jQueryBuddha(this).addClass("fa fa-angle-right"); } }); } else if(setTreeDirection == "set_tree_left") { jQueryBuddha(li).find("ul.mm-submenu").addClass("tree-open-left"); jQueryBuddha(li).find("ul.mm-submenu.tree li").removeClass("fa fa-angle-right fa-angle-left"); jQueryBuddha(li).find("ul.mm-submenu.tree li").each(function(){ if (jQueryBuddha(this).find("ul.mm-submenu").length>0) { jQueryBuddha(this).addClass("fa fa-angle-left"); } }); } else if(setTreeDirection == "set_tree_auto") { tree direction var end */ /* on touch devices refresh tree direction only on main menu item touch, not on children touch. avoids tree direction issues on 3 level menus. same behavior is on desktop hover. */
			if (jQueryBuddha(li).parents(".buddha-menu-item.mega-hover").length == 0) {
				var offsetLeft = jQueryBuddha(li).offset().left + jQueryBuddha(li).outerWidth() / 2;
				if ((offsetLeft < (bodyWidth / 2) && (setTreeDirection == "set_tree_auto" || setTreeDirection == undefined)) || setTreeDirection == "set_tree_right") {
					jQueryBuddha(li).find("ul.mm-submenu").removeClass("tree-open-left");
					jQueryBuddha(li).find("ul.mm-submenu.tree li").removeClass("fa fa-angle-right fa-angle-left");
					jQueryBuddha(li).find("ul.mm-submenu.tree li").each(function () {
						if (jQueryBuddha(this).find("ul.mm-submenu").length > 0) {
							jQueryBuddha(this).addClass("fa fa-angle-right");
						}
					});
				} else {
					jQueryBuddha(li).find("ul.mm-submenu").addClass("tree-open-left");
					jQueryBuddha(li).find("ul.mm-submenu.tree li").removeClass("fa fa-angle-right fa-angle-left");
					jQueryBuddha(li).find("ul.mm-submenu.tree li").each(function () {
						if (jQueryBuddha(this).find("ul.mm-submenu").length > 0) {
							jQueryBuddha(this).addClass("fa fa-angle-left");
						}
					});
				}
			}
		}
	} /* when you hover over the tabs of the tabbed submenu, open their submenu + readjust the height of the tabbed submenu */
	function setTabbedSubmenuBoundries(li) {
		if (jQueryBuddha(li).closest(".horizontal-mega-menu").length > 0) { /* reset the boundries of the simple submenu, because it wasn"t visible before */
			if (allowMainMenuRecalibration) {
				setSubmenuBoundries(jQueryBuddha(li).closest(".buddha-menu-item"));
			} /* set the tabbed submenu height */
			var currentLi = jQueryBuddha(li).parent().find(">li").index(jQueryBuddha(li));
			if (jQueryBuddha(li).find(">ul.mm-submenu").length > 0) {
				jQueryBuddha(li).find(">ul.mm-submenu").removeAttr("style");
				var tabbedSubmenuHeight = jQueryBuddha(li).find(">ul.mm-submenu").outerHeight();
				var tabsHeight = 0;
				jQueryBuddha(li).parent().find(">li").each(function () {
					tabsHeight += jQueryBuddha(this).outerHeight();
				});
				if (tabsHeight > tabbedSubmenuHeight) { /* jQueryBuddha(li).parent().css("height",tabsHeight+"px"); */
					var currentStyle = jQueryBuddha(li).parent().attr("style");
					var newStyle = "";
					if (currentStyle != undefined) {
						newStyle += currentStyle + ";height:" + tabsHeight + "px !important";
					} else {
						newStyle += "height:" + tabsHeight + "px !important";
					}
					jQueryBuddha(li).parent().attr("style", newStyle); /* jQueryBuddha(li).find(">ul.mm-submenu").css("height",tabsHeight+"px"); */
					var currentStyle = jQueryBuddha(li).find(">ul.mm-submenu").attr("style");
					var newStyle = "";
					if (currentStyle != undefined) {
						newStyle += currentStyle + ";height:" + tabsHeight + "px !important";
					} else {
						newStyle += "height:" + tabsHeight + "px !important";
					}
					jQueryBuddha(li).find(">ul.mm-submenu").attr("style", newStyle);
				} else { /* jQueryBuddha(li).parent().css("height",tabbedSubmenuHeight+"px"); */
					var currentStyle = jQueryBuddha(li).parent().attr("style");
					var newStyle = "";
					if (currentStyle != undefined) {
						newStyle += currentStyle + ";height:" + tabbedSubmenuHeight + "px !important";
					} else {
						newStyle += "height:" + tabbedSubmenuHeight + "px !important";
					}
					jQueryBuddha(li).parent().attr("style", newStyle);
				}
			} else {
				jQueryBuddha(li).parent().css("height", "auto");
			} /* set the simple submenu top */
			var top = jQueryBuddha(li).parent().find(">li:nth-child(" + (currentLi + 1) + ")").position().top;
			var currentStyle = jQueryBuddha(li).find(">ul.mm-submenu").attr("style");
			var newStyle = "";
			if (currentStyle != undefined) {
				newStyle += currentStyle + ";top:-" + top + "px !important";
			} else {
				newStyle += "top:-" + top + "px !important";
			}
			jQueryBuddha(li).find(">ul.mm-submenu").attr("style", newStyle);
		} else {
			jQueryBuddha(li).closest(".vertical-mega-menu").find(".tab-opened").removeClass("tab-opened"); /* jQueryBuddha(".tab-opened").removeClass("tab-opened"); */
		}
	} /* set the boundries of the contact submenus */
	function setContactSubmenuBoundries(li) {
		var bodyWidth = jQueryBuddha("body").width();
		var headerOffset = 1000;
		if (jQueryBuddha(li).find(">ul.mm-submenu.mm-contact").length > 0 && jQueryBuddha(li).closest(".horizontal-mega-menu").length > 0) { /* get header offset */
			jQueryBuddha(li).parent().parents().each(function () {
				var offsetLeft = jQueryBuddha(this).offset().left + parseInt(jQueryBuddha(this).css("padding-left"));
				if (offsetLeft < headerOffset && offsetLeft > 0) {
					headerOffset = offsetLeft;
				}
			});
			if (headerOffset == 1000) {
				headerOffset = 0;
			}
			if (headerOffset * 2 > bodyWidth) {
				headerOffset = 0;
			}
			if (customHeaderOffset) {
				if (customHeaderOffset < bodyWidth) {
					headerOffset = (bodyWidth - customHeaderOffset) / 2;
				} else {
					headerOffset = 0;
				}
			} /* set menu width */
			var submenu = jQueryBuddha(li).find(">ul.mm-submenu.mm-contact");
			var headerWidth = bodyWidth - headerOffset * 2;
			submenu.css({
				"width": headerWidth + "px",
				"left": "auto",
				"right": "auto"
			}); /* set simple submenu boundry */
			var offsetLeft = jQueryBuddha(li).offset().left + jQueryBuddha(li).outerWidth() / 2;
			if (offsetLeft < (bodyWidth / 2)) {
				var left = bodyWidth - (bodyWidth - jQueryBuddha(li).offset().left) - headerOffset;
				submenu.css("left", -left + "px");
			} else {
				var right = bodyWidth - jQueryBuddha(li).offset().left - jQueryBuddha(li).outerWidth() - headerOffset;
				submenu.css("right", -right + "px");
			}
		} else {
			jQueryBuddha(li).find("ul.mm-submenu.mm-contact").css({
				"left": "auto",
				"right": "auto",
				"width": "auto",
				"height": "auto"
			});
			if (jQueryBuddha(li).find(">ul.mm-submenu.mm-contact").width() <= 480) {
				jQueryBuddha(li).find(">ul.mm-submenu.mm-contact").addClass("one-column");
			}
		}
	}

	function addTouch() { /* when touching outside close the submenu */
		touched = false;
		if (globalTouch) {
			jQueryBuddha("*").off("touchend.mm-all-dom-elements");
			jQueryBuddha("*").on("touchend.mm-all-dom-elements", function (e) {
				if (jQueryBuddha(this).closest(".buddha-menu-item").length == 0) {
					jQueryBuddha(".mega-hover").removeClass("mega-hover");
				}
			});
		}
		var elementTouched = false;
		jQueryBuddha(".vertical-mega-menu li").off("touchstart.mm-vertical-li");
		jQueryBuddha(".vertical-mega-menu li").on("touchstart.mm-vertical-li", function (e) {
			elementTouched = false;
		});
		jQueryBuddha(".vertical-mega-menu li").off("touchmove.mm-vertical-li");
		jQueryBuddha(".vertical-mega-menu li").on("touchmove.mm-vertical-li", function (e) {
			elementTouched = true;
		});
		jQueryBuddha(".vertical-mega-menu li").off("touchend.mm-vertical-li");
		jQueryBuddha(".vertical-mega-menu li").on("touchend.mm-vertical-li", function (e) {
			"use strict";
			if (!elementTouched) {
				elementTouched = true;
				setTimeout(function () {
					elementTouched = false;
				}, 300);
				var li = jQueryBuddha(this);
				if (li.find("ul.mm-submenu").length > 0) {
					if (li.hasClass("mm-hovering")) {
						return true;
					} else {
						e.preventDefault();
						if (li.find(">a>.toggle-menu-btn").length > 0) {
							li.find(">a>.toggle-menu-btn").click();
						} else if (li.find(">a>span>.toggle-menu-btn").length > 0) {
							li.find(">a>span>.toggle-menu-btn").click();
						}
						return false;
					}
				} else { /* ignore countdown li-s but keep propagation to trigger mainmenuitem touch */
					if (li.parents(".buddha-menu-item-countdown").length > 0) {
						e.preventDefault();
						elementTouched = false;
					} else {
						setTimeout(function () {
							if (!changingPage) {
								li.find("a").first().click();
							}
						}, 200);
					}
					return true;
				}
			}
		});
		var elementTouched2 = false;
		jQueryBuddha(".horizontal-mega-menu li").off("touchstart.mm-horizontal-li");
		jQueryBuddha(".horizontal-mega-menu li").on("touchstart.mm-horizontal-li", function (e) {
			elementTouched2 = false;
		});
		jQueryBuddha(".horizontal-mega-menu li").off("touchmove.mm-horizontal-li");
		jQueryBuddha(".horizontal-mega-menu li").on("touchmove.mm-horizontal-li", function (e) {
			elementTouched2 = true;
		});
		jQueryBuddha(".horizontal-mega-menu li").off("touchend.mm-horizontal-li");
		jQueryBuddha(".horizontal-mega-menu li").on("touchend.mm-horizontal-li", function (e) {
			"use strict"; /* ignore non taps */
			if (!elementTouched2) {
				elementTouched2 = true;
				setTimeout(function () {
					elementTouched2 = false;
				}, 300);
				var li = jQueryBuddha(this); /* tap on main menu items with children first tap => add the hover class and redraw second tap => perform default action */
				if (li.is(".buddha-menu-item")) {
					if (li.find("ul.mm-submenu").length > 0) {
						if (li.hasClass("mega-hover")) {
							mmGoToPage(li.find("a").first(), e);
							return true;
						} else {
							e.preventDefault();
							jQueryBuddha(".mega-hover").removeClass("mega-hover");
							li.addClass("mega-hover");
							setSubmenuBoundries(li);
							setContactSubmenuBoundries(li);
							if (li.find(".tab-opened").length > 0) {
								setTabbedSubmenuBoundries(li.find(".tab-opened"));
							}
							return false;
						}
					} else {
						return true;
					} /* tap on tabbed menu: first tap => open tab second tap => default action */
				} else if (li.parent().is(".mm-submenu.tabbed")) {
					if (li.find("ul.mm-submenu").length > 0) {
						if (li.hasClass("tab-opened")) {
							mmGoToPage(li.find("a").first(), e);
							return true;
						} else {
							e.preventDefault();
							li.parent().find(">li").removeClass("tab-opened");
							li.addClass("tab-opened");
							setTabbedSubmenuBoundries(li);
							setSubmenuBoundries(li.parent().parent());
							return false;
						}
					} else {
						return true;
					} /* tap on tree menu with children: first tap => open sub tree second tap => default action */
				} else if (li.parents(".mm-submenu.tree").length > 0 && li.find("ul.mm-submenu").length > 0) {
					if (li.hasClass("mega-hover")) {
						mmGoToPage(li.find("a").first(), e);
						return true;
					} else {
						e.preventDefault();
						li.parent().find(">li").removeClass("mega-hover");
						li.addClass("mega-hover");
						li.find(".mega-hover").removeClass("mega-hover");
						jQueryBuddha.each(li.parents(), function () {
							if (jQueryBuddha(this).prop("tagName").toLowerCase() == "li") {
								jQueryBuddha(this).addClass("mega-hover");
							}
						});
						setSubmenuBoundries(li);
						return false;
					} /* ignore countdown li-s but keep propagation to trigger mainmenuitem touch */
				} else if (li.parents(".buddha-menu-item-countdown").length > 0) {
					e.preventDefault();
					elementTouched2 = false;
					return true; /* ignore contact */
				} else if (li.parents(".mm-contact").length > 0) {
					e.stopPropagation();
					return true; /* all other menu li types: open the page */
				} else {
					mmGoToPage(li.find("a").first(), e);
					return true;
				}
			}
		});
	}

	function addTouch2() {
		var elementTouched = false;
		var elementTouched2 = false;
		jQueryBuddha(document).off("touchstart.mm-li");
		jQueryBuddha(document).on("touchstart.mm-li", function (e) {
			if (jQueryBuddha(e.target).closest(".vertical-mega-menu li").length > 0) elementTouched = false;
			else if (jQueryBuddha(e.target).closest(".horizontal-mega-menu li").length > 0) elementTouched2 = false;
		});
		jQueryBuddha(document).off("touchmove.mm-li");
		jQueryBuddha(document).on("touchmove.mm-li", function (e) {
			if (jQueryBuddha(e.target).closest(".vertical-mega-menu li").length > 0) elementTouched = true;
			else if (jQueryBuddha(e.target).closest(".horizontal-mega-menu li").length > 0) elementTouched2 = true;
		});
		jQueryBuddha(document).off("touchend.mm-li");
		jQueryBuddha(document).on("touchend.mm-li", function (e) { /* when touching outside close the submenu */
			if (globalTouch) {
				if (jQueryBuddha(e.target).closest(".buddha-menu-item").length == 0) {
					jQueryBuddha(".mega-hover").removeClass("mega-hover");
				}
			}
			if (jQueryBuddha(e.target).closest(".vertical-mega-menu li").length > 0) {
				"use strict";
				if (!elementTouched) {
					elementTouched = true;
					setTimeout(function () {
						elementTouched = false;
					}, 300);
					var li = jQueryBuddha(e.target).closest("li");
					if (li.find("ul.mm-submenu").length > 0) {
						if (li.hasClass("mm-hovering")) {
							return true;
						} else {
							e.preventDefault();
							if (li.find(">a>.toggle-menu-btn").length > 0) {
								li.find(">a>.toggle-menu-btn").click();
							} else if (li.find(">a>span>.toggle-menu-btn").length > 0) {
								li.find(">a>span>.toggle-menu-btn").click();
							}
							return false;
						}
					} else { /* ignore countdown li-s but keep propagation to trigger mainmenuitem touch */
						if (li.parents(".buddha-menu-item-countdown").length > 0) {
							e.preventDefault();
							elementTouched = false;
						} else {
							setTimeout(function () {
								if (!changingPage) {
									li.find("a").first().click();
								}
							}, 200);
						}
						return true;
					}
				}
			} else if (jQueryBuddha(e.target).closest(".horizontal-mega-menu li").length > 0) {
				"use strict"; /* ignore non taps */
				if (!elementTouched2) {
					elementTouched2 = true;
					setTimeout(function () {
						elementTouched2 = false;
					}, 300);
					var li = jQueryBuddha(e.target).closest("li"); /* tap on main menu items with children first tap => add the hover class and redraw second tap => perform default action */
					if (li.is(".buddha-menu-item")) {
						if (li.find("ul.mm-submenu").length > 0) {
							if (li.hasClass("mega-hover")) {
								mmGoToPage(li.find("a").first(), e);
								return true;
							} else {
								e.preventDefault();
								jQueryBuddha(".mega-hover").removeClass("mega-hover");
								li.addClass("mega-hover");
								setSubmenuBoundries(li);
								setContactSubmenuBoundries(li);
								if (li.find(".tab-opened").length > 0) {
									setTabbedSubmenuBoundries(li.find(".tab-opened"));
								}
								return false;
							}
						} else {
							return true;
						} /* tap on tabbed menu: first tap => open tab second tap => default action */
					} else if (li.parent().is(".mm-submenu.tabbed")) {
						if (li.find("ul.mm-submenu").length > 0) {
							if (li.hasClass("tab-opened")) {
								mmGoToPage(li.find("a").first(), e);
								return true;
							} else {
								e.preventDefault();
								li.parent().find(">li").removeClass("tab-opened");
								li.addClass("tab-opened");
								setTabbedSubmenuBoundries(li);
								setSubmenuBoundries(li.parent().parent());
								return false;
							}
						} else {
							return true;
						} /* tap on tree menu with children: first tap => open sub tree second tap => default action */
					} else if (li.parents(".mm-submenu.tree").length > 0 && li.find("ul.mm-submenu").length > 0) {
						if (li.hasClass("mega-hover")) {
							mmGoToPage(li.find("a").first(), e);
							return true;
						} else {
							e.preventDefault();
							li.parent().find(">li").removeClass("mega-hover");
							li.addClass("mega-hover");
							li.find(".mega-hover").removeClass("mega-hover");
							jQueryBuddha.each(li.parents(), function () {
								if (jQueryBuddha(this).prop("tagName").toLowerCase() == "li") {
									jQueryBuddha(this).addClass("mega-hover");
								}
							});
							setSubmenuBoundries(li);
							return false;
						} /* ignore countdown li-s but keep propagation to trigger mainmenuitem touch */
					} else if (li.parents(".buddha-menu-item-countdown").length > 0) {
						e.preventDefault();
						elementTouched2 = false;
						return true; /* ignore contact */
					} else if (li.parents(".mm-contact").length > 0) {
						e.stopPropagation();
						return true; /* all other menu li types: open the page */
					} else {
						mmGoToPage(li.find("a").first(), e);
						return true;
					}
				}
			}
		});
	}

	function getUlPath(element) {
		var path, node = element;
		var firstNode = true;
		while (node.length) {
			var realNode = node[0],
				name = realNode.localName;
			if (!name) break;
			name = name.toLowerCase();
			var parent = node.parent();
			var nthChild = "";
			var sameTagSiblings;
			try {
				sameTagSiblings = parent.children(name);
			} catch (e) {
				path = "*" + (path ? ">" + path : "");
				node = parent;
				continue;
			}
			if (sameTagSiblings.length > 1) {
				allSiblings = parent.children();
				var index = allSiblings.index(realNode) + 1;
				if (index > 0) {
					nthChild = ":nth-child(" + index + ")";
				}
			}
			var idClass = "";
			ignoreClass = false;
			if (name != "body" && name != "html") {
				if (jQueryBuddha(realNode).prop("id").length > 0) {
					idClass = "#" + realNode.id;
				} else if (jQueryBuddha(realNode).prop("class").length > 0 && !firstNode && !ignoreClass) { /* idClass = "."+realNode.className.trim().replace(/ /g, ".").replace(".is-light", "").replace(".is-dark", "").replace(".is-complete", "").replace(".is-processing", "").replace("..",".").replace("..",".").replace("..",".").replace("..",".").replace("..","."); idClass = idClass.replace(".DomOutlineBox", "").replace(".vertical-mega-menu", "").replace(".horizontal-mega-menu", ""); */
					if (jQueryBuddha(realNode).attr("class") != undefined && jQueryBuddha(realNode).attr("class").trim() != "") {
						idClass = "." + jQueryBuddha(realNode).attr("class").trim().split(" ")[0];
					}
				}
			}
			if (jQueryBuddha.inArray(name, ["li", "ul", "header"]) !== -1) {
				name += nthChild;
			} /* name += nthChild; */
			firstNode = false;
			path = name + idClass + (path ? ">" + path : "");
			node = parent;
		}
		return path;
	} /* DEPRECATED function getParameterByName(name, url) { if (!url) url = window.location.href; name = name.replace(/[\[\]]/g, "\\$&"); var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"), results = regex.exec(url); if (!results) return null; if (!results[2]) return ''; return decodeURIComponent(results[2].replace(/\+/g, " ")); } */
}
if (typeof mmBeforeLoaded == "undefined") {
	var buddhaMegaMenuShop = "deltasci.myshopify.com";
	var mmBeforeLoaded = true;
	if (typeof InstantClick !== "undefined") {
		InstantClick.on("change", function (isInitialLoad) {
			if (!isInitialLoad) {
				ulPaths = [];
				storeUlCount = 0;
				storeNavCount = 0;
				if (typeof loadFlipClockBuddha !== "undefined") {
					loadFlipClockBuddha(jQueryBuddha);
				}
				if (typeof loadBuddhaMegaMenu !== "undefined") {
					loadBuddhaMegaMenu();
				} else {
					setTimeout(function () {
						loadBuddhaMegaMenu();
					}, 1000);
				}
			}
		});
	}
	var hideOriginalMenuInterval;

	function hideOriginalMenu() {
		hideOriginalMenuInterval = setInterval(function () {
			menu = "primary-menu";
			var links = [];
			jQueryBuddha.each(linkLists, function (key, item) {
				if (menu == key) {
					links = item.items;
					return false;
				}
			});
			if (menu != "none" && links.length > 0) {
				jQueryBuddha("ul,nav").each(function () {
					var elementFits = 0;
					jQueryBuddha(this).find(">li").each(function () {
						var href = jQueryBuddha(this).find("a").first().attr("href"); /*if (typeof href !== "undefined") { href = href.replace("http://"+buddhaMegaMenuShop,"").replace("https://"+buddhaMegaMenuShop,""); }*/
						if (links[elementFits] != undefined && href == links[elementFits]) {
							elementFits++;
						} else if (elementFits > 0 && elementFits != links.length) {
							elementFits = 0;
							if (href == links[0]) {
								elementFits = 1;
							}
						}
					});
					if (elementFits > 0 && elementFits == links.length) {
						jQueryBuddha(this).addClass("buddha-disabled-menu");
					}
				});
			}
		}, 50);
		setTimeout(function () {
			jQueryBuddha(".buddha-disabled-menu").removeClass("buddha-disabled-menu");
			clearInterval(hideOriginalMenuInterval);
		}, 3000);
	}

	function loadJqueryBuddha() {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function () {
			if (xhr.readyState == XMLHttpRequest.DONE) {
				var data = xhr.responseText;
				jQueryBuddha = data.replace(/jQuery/g, 'jQueryBuddha');
				eval(jQueryBuddha);
				if (typeof jQuery !== 'undefined') {
					$ = jQuery.noConflict();
				}
				if (typeof hideOriginalMenu != 'undefined') {
					hideOriginalMenu();
				}
				if (typeof loadFlipClockBuddha !== 'undefined') {
					loadFlipClockBuddha(jQueryBuddha);
				}
				if (typeof loadBuddhaMegaMenu !== 'undefined') {
					loadBuddhaMegaMenu();
				} else {
					setTimeout(function () {
						loadBuddhaMegaMenu();
					}, 1000);
				}
			}
		};
		xhr.open('GET', 'https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js', true);
		xhr.send(null);
	}
	var jQueryBuddha;

	function BuddhaMegaMenuMain() {
		if (typeof jQuery == 'undefined') {
			loadJqueryBuddha();
		} else {
			var vernums = jQuery.fn.jquery.split('.');
			if ((parseInt(vernums[0]) == 1 && parseInt(vernums[1]) >= 7) || parseInt(vernums[0]) > 1) {
				jQueryBuddha = jQuery;
				if (typeof hideOriginalMenu != 'undefined') {
					hideOriginalMenu();
				}
				if (typeof loadFlipClockBuddha !== 'undefined') {
					loadFlipClockBuddha(jQueryBuddha);
				}
				if (typeof loadBuddhaMegaMenu !== 'undefined') {
					loadBuddhaMegaMenu();
				} else {
					setTimeout(function () {
						loadBuddhaMegaMenu();
					}, 1000);
				}
			} else {
				loadJqueryBuddha();
			}
		}
	}
	if (window.self !== window.top || false) { /* in preview or if customMenuUls is defined, start loading immediately */
		BuddhaMegaMenuMain();
	} else { /* on frontend load after dom content loaded event to emulate deferred exec */
		if (document.readyState !== "loading") {
			BuddhaMegaMenuMain();
		} else {
			document.addEventListener("DOMContentLoaded", BuddhaMegaMenuMain);
		}
	}
}
  