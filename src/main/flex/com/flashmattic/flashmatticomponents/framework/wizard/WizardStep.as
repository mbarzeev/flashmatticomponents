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
	import mx.containers.Canvas;
	
	/**
	 * @author MBz
	 */	
	public class WizardStep extends Canvas implements IWizardStep {
		private var _stepName:String;
		private var _stepDescription:String;
		private var _isValid:Boolean;
		private var _dataField:String;
		
		public function WizardStep() {
			super();
		}
		
		public function get stepName():String {
			return _stepName;
		}
		
		public function set stepName(value:String):void	{
			_stepName = value;
		}
		
		public function get stepDescription():String {
			return _stepDescription;
		}
		
		public function set stepDescription(value:String):void {
			_stepDescription = value;
		}
		[Bindable]
		public function get isValid():Boolean {
			return _isValid;
		}
		
		public function set isValid(value:Boolean):void	{
			_isValid = value;
		}
		
		public function get dataField():String {
			return _dataField;
		}
		
		public function set dataField(value:String):void {
			_dataField = value;
		}
		
		public function get stepDecision():* {
			return null;
		}
		
		public function get readableStepDecision():String {
			return null;	
		}
	}
}