/*
 * Seisaku-Lib AS3
 *
 * Project home: https://github.com/jedrichards/seisakulib
 * Website: http://www.seisaku.co.uk
 * Contact: jed@seisaku.co.uk
 *	
 * Copyright (c) 2009 Seisaku Limited/Jed Richards
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
 
package seisaku.lib.events
{
	import flash.events.Event;
	
	/**
	 * Custom event class for TextScroller events.
	 */
	public class TextScrollerEvent extends Event
	{
		/**
		 * This event is fired once the instance is ready to be interacted with
		 * after the target textfield's scroll properties have changed.
		 */
		public static const READY:String = "textScrollerReady";
		
		public function TextScrollerEvent(p_type:String,p_bubbles:Boolean=false,p_cancelable:Boolean=false)
		{
			super(p_type,p_bubbles,p_cancelable);
		}
		
		override public function clone():Event
		{
			return new TextScrollerEvent(type,bubbles,cancelable);
		}
		
		override public function toString():String
		{
			return formatToString("TextScrollerEvent","type","bubbles","cancelable","eventPhase");
		}
	}
}