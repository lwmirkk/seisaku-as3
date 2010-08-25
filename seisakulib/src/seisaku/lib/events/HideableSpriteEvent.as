/*
 * Seisaku-Lib AS3
 *
 * Hosting: code.google.com/p/seisaku-lib
 * Portfolio: www.seisaku.co.uk
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
	 * Custom event class for HideableSprite events.
	 */
	public class HideableSpriteEvent extends Event
	{
		/**
		 * This event is dispatched when the instance begins a transition to its show state.
		 */
		public static const SHOW:String = "hideableSpriteShow";
		
		/**
		 * This event is dispatched when the instance completes a transition to its show state.
		 */
		public static const SHOW_COMPLETE:String = "hideableSpriteShowComplete";
		
		/**
		 * This event is dispatched when the instance begins a transition to its hide state.
		 */
		public static const HIDE:String = "hideableSpriteHide";
		
		/**
		 * This event is dispatched when the instance completes a transition to its hide state.
		 */
		public static const HIDE_COMPLETE:String = "hideableSpriteHideComplete";
		
		public function HideableSpriteEvent(p_type:String,p_bubbles:Boolean=false,p_cancelable:Boolean=false)
		{
			super(p_type,p_bubbles,p_cancelable);
		}
		
		override public function clone():Event
		{
			return new HideableSpriteEvent(type,bubbles,cancelable);
		}
		
		override public function toString():String
		{
			return formatToString("HideableSpriteEvent","type","bubbles","cancelable","eventPhase");
		}
	}
}