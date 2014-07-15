/*
 * WarSi - Prototype Software Center for BlankOn
 *
 * Copyright (c) 2014, Estu Fardani <andro.medh4@gmail.com>
 * All rights reserved. Released under the MIT license.
 */

using GLib;
using Gtk;
using WebKit;
using JSCore;

namespace Warung {
	public class Main : WebKit.WebView {		
		public void * context { get; set; }
		public Main () 
		{
			var test = new App();
			load_uri ("file://" + Environment.get_current_dir() + "/public/index.html");
			window_object_cleared.connect ((frame, context) => {
			test.setup_js_class ((JSCore.GlobalContext) context);
			});
		}
	}
}