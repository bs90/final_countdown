package NWO_fla
{
   import flash.display.MovieClip;
   
   public dynamic class shared_diary_16 extends MovieClip
   {
       
      
      public var hidden:MovieClip;
      
      public function shared_diary_16()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
      
      function frame4() : *
      {
         stop();
      }
      
      function frame5() : *
      {
         stop();
      }
      
      function frame6() : *
      {
         stop();
      }
      
      function frame7() : *
      {
         stop();
      }
      
      function frame8() : *
      {
         stop();
      }
      
      function frame9() : *
      {
         stop();
         if(!MovieClip(root).lost_page_in)
         {
            this.hidden.visible = false;
         }
      }
   }
}
