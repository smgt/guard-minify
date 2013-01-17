var myModule = {
    myProperty : 'someValue',
    //object literals can contain properties and methods.
    //here, another object is defined for configuration
    //purposes:
    myConfig:{
        useCaching:true,
        language: 'en'   
    },
    //a very basic method
    myMethod: function(){
        console.log('I can haz functionality?');
    },
    //output a value based on current configuration
    myMethod2: function(){
        console.log('Caching is:' + (this.myConfig.useCaching)?'enabled':'disabled');
    },
    //override the current configuration
    myMethod3: function(newConfig){
        if(typeof newConfig == 'object'){
           this.myConfig = newConfig;
           console.log(this.myConfig.language); 
        }
    }
};
 
myModule.myMethod(); //I can haz functionality
myModule.myMethod2(); //outputs enabled
myModule.myMethod3({language:'fr',useCaching:false}); //fr
