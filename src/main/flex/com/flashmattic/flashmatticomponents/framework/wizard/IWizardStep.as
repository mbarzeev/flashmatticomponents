/*  
Copyright 2009 Flashmattic, Matti Bar-Zeev

Licensed under the Apache License,Version 2.0 (the "License"); you may not use 
this file except in compliance with the License. You may obtain a copy of the 
License at 

http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
CONDITIONS OF ANY KIND, either express or implied. See the License for the 
specific language governing permissions and limitations under the License. 
*/
package com.flashmattic.flashmatticomponents.framework.wizard {
	import mx.core.IChildList;
	import mx.core.IUIComponent;
	
	/**
	 * @author MBz
	 */	
	public interface IWizardStep extends IChildList, IUIComponent {
		/**
		 * This is the step name that will appear on the summary of the wizard
		 * when all the decisions will be displayed 
		 */		
		function get stepName():String;
		function set stepName(value:String):void;
		
		/**
		 * This is the description of the step. This string will appear at the 
		 * top, indicating instructions or whatever comes to mind 
		 */		
		function get stepDescription():String;
		function set stepDescription(value:String):void;
		
		/**
		 * Tells whether the step is valid and we can move on to the next step 
		 */		
		[Bindable("propertyChange")]
		function get isValid():Boolean;
		function set isValid(value:Boolean):void;
		
		/**
		 * This is the property name on which the data for this step would be
		 * saved on the data model given to the Wizard 
		 */		
		function get dataField():String;
		function set dataField(value:String):void;
		
		/**
		 * Returns the "decision" the current step has ended up with
		 * @return	Any type you can think of
		 */		
		function get stepDecision():*;
		
		/**
		 * Returns a string that represents the step decision in a readable 
		 * format. We use it for the end slide of the Wizard to describe the 
		 * step decision 
		 */		
		function get readableStepDecision():String;
	}
}