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
package com.flashmattic.flashmatticomponents.component.validator.pathvalidator {
	import flash.filesystem.File;
	
	import mx.validators.ValidationResult;
	import mx.validators.Validator;
	
	/**
	 * This validator validates that a path given is a valid path for an existing
	 * file or folder.
	 * @author MBz
	 */	
	public class PathValidator extends Validator {
		public function PathValidator()	{
			super();
		}
		
		/**
		 * Checks for illigal arguments for the File constructor and also if the
		 * path given is valid and points to an existing file or folder. 
		 * This also checks of any input was inserted, if the user decided that
		 * this field is requiered.
		 * @param 	value
		 * @return	Array
		 */		
		override protected function doValidation(value:Object):Array {
			// Convert value to a String.
            var inputValue:String = value as String;

            // Clear results Array.
            var results:Array = new Array();
            
            var validationResult:ValidationResult;

            // Call base class doValidation().
            results = super.doValidation(value); 
                   
            // Return if there are errors.
            if (results.length > 0) {
            	return results;
            }
            
            if (required && (inputValue == null || inputValue == "")) {
            	validationResult = new ValidationResult(true, 
														null, 
														"no string", 
														"You must enter a path");
            	results.push(validationResult);
                return results;
            }     
            
            try {
            	var testFile:File = new File(inputValue);
	            if (!testFile.exists) {
	            	validationResult = new ValidationResult(true, 
															null, 
															"path not valid", 
															"Invalid Path"); 
	            	results.push(validationResult);
	                return results;
	            }
            } catch (e:ArgumentError) {
            	validationResult = new ValidationResult(true, 
														null, 
														"path not valid", 
														"Invalid Path"); 
            	results.push(validationResult);
            }
            return results;
		}
	}
}