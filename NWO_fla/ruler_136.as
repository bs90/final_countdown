package NWO_fla
{
   import flash.display.MovieClip;
   
   public dynamic class ruler_136 extends MovieClip
   {
       
      
      public function ruler_136()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r42_ruler_in)
         {
            stop();
         }
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
