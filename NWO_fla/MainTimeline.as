package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   
   public dynamic class MainTimeline extends MovieClip
   {
      
      public var dancing_clock:MovieClip;
      
      public var dead_mc:MovieClip;
      
      public var shared_3fp:MovieClip;
      
      public var shared_r11_key1:MovieClip;
      
      public var r1_bomb_mc:MovieClip;
      
      public var shared_clf_bee:MovieClip;
      
      public var shared_r12_a_note:MovieClip;
      
      public var shared_r12_key1:MovieClip;
      
      public var light_hint:MovieClip;
      
      public var binary:MovieClip;
      
      public var shared_clf_bomb:MovieClip;
      
      public var shared_1fp:MovieClip;
      
      public var pc:MovieClip;
      
      public var shared_clock_minute:MovieClip;
      
      public var ruler:MovieClip;
      
      public var back_to_room_3_door:MovieClip;
      
      public var shared_items_bg_mc:SimpleButton;
      
      public var r33_door:MovieClip;
      
      public var shared_cuuhoa:MovieClip;
      
      public var shared_mirror_paper:MovieClip;
      
      public var left_wall_btn:SimpleButton;
      
      public var r11switchon_btn:SimpleButton;
      
      public var clock_mc:MovieClip;
      
      public var r14_tv_mc:MovieClip;
      
      public var r12lighthint_mc:MovieClip;
      
      public var shared_lostpage:MovieClip;
      
      public var shared_r14_battery1:MovieClip;
      
      public var shared_gift:MovieClip;
      
      public var r1_bomb_btn:MovieClip;
      
      public var calender:MovieClip;
      
      public var prev_wall_btn:MovieClip;
      
      public var shared_r14_battery2:MovieClip;
      
      public var shared_r2_franaldo_key:MovieClip;
      
      public var shared_clf_map:MovieClip;
      
      public var mirror_mc:MovieClip;
      
      public var back_to_room1_door:MovieClip;
      
      public var shared_ruler:MovieClip;
      
      public var shared_r14_diary:MovieClip;
      
      public var shared_tovit:MovieClip;
      
      public var shared_clock_hour:MovieClip;
      
      public var pcmini:MovieClip;
      
      public var shared_clf_sun:MovieClip;
      
      public var right_wall_btn:SimpleButton;
      
      public var khoibom:MovieClip;
      
      public var back_to_room2_door:MovieClip;
      
      public var shared_bnote:MovieClip;
      
      public var username:TextField;
      
      public var teamname:TextField;
      
      public var notification_mc:MovieClip;
      
      public var r1dark_mc:MovieClip;
      
      public var shared_microsd:MovieClip;
      
      public var eye1:MovieClip;
      
      public var shared_dancing:MovieClip;
      
      public var shared_4fp:MovieClip;
      
      public var eye2:MovieClip;
      
      public var r14_diary_mc:MovieClip;
      
      public var start_mc:MovieClip;
      
      public var r11_door_mc:MovieClip;
      
      public var minicalender:MovieClip;
      
      public var eye3:MovieClip;
      
      public var shared_2fp:MovieClip;
      
      public var shared_big_items_mc:MovieClip;
      
      public var browserCookieString;
      
      public var cookieVariables;
      
      public var started;
      
      public var bomb_disable;
      
      public var using;
      
      public var lost_page_in;
      
      public var tovit_status;
      
      public var r1_lighton;
      
      public var r11_box_unlocked;
      
      public var r11_key1_got;
      
      public var r11_1fp_got;
      
      public var r12_key1_got;
      
      public var r12_a_note_got;
      
      public var r12_bomb_got;
      
      public var r12_mirror_paper_got;
      
      public var r13_door_unlocked;
      
      public var r14_diary_got;
      
      public var r14_battery_got;
      
      public var r21_2fp_got;
      
      public var r21_map_got;
      
      public var r21_box_unlocked;
      
      public var r22_sun_got;
      
      public var r22_green_key_got;
      
      public var r23_door_unlocked;
      
      public var r23_tovit_got;
      
      public var r24_bee_got;
      
      public var r31_box_unlocked;
      
      public var r31_3fp_got;
      
      public var r31_clock_hour_got;
      
      public var r32_clock_hour_in;
      
      public var r32_clock_minute_in;
      
      public var r32_gift_got;
      
      public var r32_ruler_got;
      
      public var r33_door_unlocked;
      
      public var r34_clock_minute_got;
      
      public var r34_binary_opened;
      
      public var r34_binary_oned;
      
      public var r34_binary_twoed;
      
      public var r34_microsd_got;
      
      public var r41_dancing_got;
      
      public var r43_lostpage_got;
      
      public var r43_bnote_got;
      
      public var r43_fp4_got;
      
      public var r41_cuuhoa_got;

      public var start_time = new Date();
      
      public var limit_time = 60*60*1000;
      
      public var i;
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,13,this.frame14,14,this.frame15,15,this.frame16,16,this.frame17,17,this.frame18,18,this.frame19,19,this.frame20,20,this.frame21,21,this.frame22,22,this.frame23);
      }
      
      public function onComplete(e:Event) : *
      {
         var item:* = undefined;
         this.dead_mc.visible = false;
         stage.showDefaultContextMenu = false;
         var items:* = ["shared_r12_key1","shared_r11_key1","shared_r12_a_note","shared_r14_diary","shared_1fp","shared_2fp","shared_3fp","shared_4fp","shared_clf_sun","shared_clf_map","shared_clf_bomb","shared_clf_bee","shared_r2_franaldo_key","shared_clock_hour","shared_clock_minute","shared_gift","shared_mirror_paper","shared_r14_battery1","shared_r14_battery2","shared_tovit","shared_microsd","shared_ruler","shared_dancing","shared_cuuhoa","shared_lostpage","shared_bnote"];
         for each(item in items)
         {
            this[item].visible = false;
            this[item].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               if(MovieClip(root).using == e.target.name)
               {
                  MovieClip(root).using = "";
                  shared_items_bg_mc.visible = false;
                  return;
               }
               shared_items_bg_mc.width = e.target.width + 4;
               shared_items_bg_mc.height = e.target.height + 4;
               shared_items_bg_mc.x = e.target.x;
               shared_items_bg_mc.y = e.target.y;
               if(e.target.name == "shared_clock_hour")
               {
                  shared_items_bg_mc.y = e.target.y + 6;
               }
               if(e.target.name == "shared_clock_minute")
               {
                  shared_items_bg_mc.y = e.target.y + 16;
               }
               shared_items_bg_mc.visible = true;
               MovieClip(root).using = e.target.name;
               if(e.target.name == "shared_r12_a_note")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(1);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("A strange small note?");
               }
               if(e.target.name == "shared_r14_diary")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(2);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("You can now read a diary of a strange guy. Is it yours???");
               }
               if(e.target.name == "shared_clf_sun")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(3);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("A strange piece of paper?");
               }
               if(e.target.name == "shared_clf_map")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(4);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("A strange piece of paper?");
               }
               if(e.target.name == "shared_clf_bomb")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(5);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("A strange piece of paper?");
               }
               if(e.target.name == "shared_clf_bee")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(6);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("A strange piece of paper?");
               }
               if(e.target.name == "shared_mirror_paper")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(7);
                  MovieClip(root).shared_big_items_mc.visible = true;
                  MovieClip(root).send_notification("Can you read it?");
               }
               if(e.target.name == "shared_tovit")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(8);
                  MovieClip(root).shared_big_items_mc.visible = true;
               }
               if(e.target.name == "shared_dancing")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(9);
                  MovieClip(root).shared_big_items_mc.visible = true;
               }
               if(e.target.name == "shared_bnote")
               {
                  MovieClip(root).shared_big_items_mc.gotoAndStop(10);
                  MovieClip(root).shared_big_items_mc.visible = true;
               }
            });
         }
      }
      
      public function send_notification(mytext:*) : void
      {
         this.notification_mc.notification_txt.text = mytext;
         this.notification_mc.visible = true;
         this.notification_mc.gotoAndPlay(2);
      }
      
      public function done_task(task_id:*) : *
      {
         return;
      }
      
      public function cheat_task(task_id:*) : *
      {
         return;
      }
      
      public function gotoOtherWall(s:String) : void
      {
         var label_array:* = MovieClip(root).currentLabel.split("-");
         var current:* = int(label_array[2]);
         if(s == "right")
         {
            current++;
            if(current == 5)
            {
               current = 1;
            }
         }
         else
         {
            current--;
            if(current == 0)
            {
               current = 4;
            }
         }
         MovieClip(root).gotoAndStop([label_array[0],label_array[1],current].join("-"));
      }
      
      public function gotoRightWall(e:MouseEvent) : void
      {
         this.gotoOtherWall("right");
      }
      
      public function gotoLeftWall(e:MouseEvent) : void
      {
         this.gotoOtherWall("prev");
      }
      
      public function check_dead(e:Event) : void
      {
         var now:Date = new Date();
         if(get_timeleft() < 0)
         {
            MovieClip(root).dead_mc.visible = true;
            MovieClip(root).removeEventListener(Event.ENTER_FRAME,this.check_dead);
         }
      }

      public function get_timeleft() {
         var now:Date = new Date();
         return this.start_time.getTime() + this.limit_time - now.getTime();
      }
      
      public function backtoPrevWall(e:MouseEvent) : void
      {
         var label_array:* = MovieClip(root).currentLabel.split("-");
         label_array.splice(label_array.length - 1,1);
         MovieClip(root).gotoAndStop(label_array.join("-"));
      }
      
      function frame1() : *
      {
         // this.browserCookieString = ExternalInterface.call("function(){return document.cookie}").replace(/;\s/g,"&");
         // this.cookieVariables = new URLVariables(this.browserCookieString);
         this.teamname.text = "HEASYGAME";
         this.username.text = "THE FINAL COUNTDOWN";
         this.loaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.tovit_status = 0;
         this.shared_big_items_mc.visible = false;
         this.shared_items_bg_mc.visible = false;
         this.right_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoRightWall);
         this.left_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoLeftWall);
         this.addEventListener(Event.ENTER_FRAME,this.check_dead);
         stop();
         if(MovieClip(root).started)
         {
            this.start_mc.visible = false;
         }
         if(MovieClip(root).r1_lighton)
         {
            this.r1dark_mc.visible = false;
         }
         else
         {
            MovieClip(root).send_notification("It\'s DARK! Can you find a switch to turn on the light?");
         }
         if(MovieClip(root).bomb_disable)
         {
            this.r1_bomb_btn.visible = false;
         }
         this.r1_bomb_btn.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-1-1-1");
         });
         this.r11switchon_btn.addEventListener(MouseEvent.CLICK,function():*
         {
            if(MovieClip(root).r1_lighton)
            {
               r1dark_mc.visible = true;
               MovieClip(root).r1_lighton = false;
               return;
            }
            if(light_hint.currentFrame == 1)
            {
               light_hint.reset_game();
            }
            r1dark_mc.visible = false;
            MovieClip(root).r1_lighton = true;
         });
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r1_lighton)
         {
            this.r1dark_mc.visible = false;
         }
         else
         {
            MovieClip(root).send_notification("It\'s DARK! Can you find a switch to turn on the light?");
         }
      }
      
      function frame3() : *
      {
         stop();
         if(MovieClip(root).r1_lighton)
         {
            this.r12lighthint_mc.visible = false;
         }
         if(MovieClip(root).r1_lighton)
         {
            this.r1dark_mc.visible = false;
         }
         else
         {
            MovieClip(root).send_notification("It\'s DARK! Can you find a switch to turn on the light?");
         }
         this.left_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoLeftWall);
         this.right_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoRightWall);
      }
      
      function frame4() : *
      {
         stop();
         if(MovieClip(root).r1_lighton)
         {
            this.r1dark_mc.visible = false;
         }
         else
         {
            MovieClip(root).send_notification("It\'s DARK! Can you find a switch to turn on the light?");
         }
         this.left_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoLeftWall);
         this.right_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoRightWall);
         if(MovieClip(root).r14_diary_got)
         {
            this.r14_diary_mc.visible = false;
         }
         this.r14_diary_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.visible = false;
            MovieClip(root).r14_diary_got = true;
            MovieClip(root).shared_r14_diary.visible = true;
            MovieClip(root).send_notification("You got a diary of someone.");
         });
      }
      
      function frame5() : *
      {
         stop();
         this.back_to_room1_door.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-1-1");
            MovieClip(root).send_notification("First room again. You need to find something here?");
         });
      }
      
      function frame6() : *
      {
         stop();
      }
      
      function frame7() : *
      {
         stop();
         for(this.i = 1; this.i <= 3; this.i++)
         {
            this["eye" + this.i].eyeindex = this.i;
            this["eye" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               MovieClip(root).gotoAndStop("room-2-3-" + e.target.eyeindex);
               MovieClip(root).send_notification("Part of yellow wall of next room!");
            });
         }
         this.left_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoLeftWall);
         this.right_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoRightWall);
      }
      
      function frame8() : *
      {
         stop();
         this.mirror_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_gift")
            {
               e.currentTarget.gotoAndStop(2);
               MovieClip(root).send_notification("Oh!");
            }
            else if(MovieClip(root).using == "shared_mirror_paper")
            {
               if(e.currentTarget.currentFrame == 2)
               {
                  e.currentTarget.gotoAndStop(3);
                  MovieClip(root).done_task(15);
               }
            }
            else
            {
               MovieClip(root).send_notification("A dirty mirror? It need to be cleaned?");
            }
         });
      }
      
      function frame9() : *
      {
         stop();
         this.back_to_room2_door.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-2-1");
            MovieClip(root).send_notification("Green room again. You need to find something here?");
         });
      }
      
      function frame10() : *
      {
         stop();
         this.clock_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_clock_hour")
            {
               e.currentTarget.gotoAndStop(2);
               MovieClip(root)["shared_clock_hour"].visible = false;
               MovieClip(root)["shared_items_bg_mc"].visible = false;
               MovieClip(root).using = "";
               MovieClip(root).send_notification("Oh!");
               MovieClip(root).r32_clock_hour_in = true;
            }
            else if(MovieClip(root).using == "shared_clock_minute")
            {
               if(MovieClip(root).r32_clock_hour_in)
               {
                  e.currentTarget.gotoAndStop(3);
                  MovieClip(root)["shared_clock_minute"].visible = false;
                  MovieClip(root)["shared_items_bg_mc"].visible = false;
                  MovieClip(root).using = "";
                  MovieClip(root).send_notification("Oh!");
                  MovieClip(root).r32_clock_minute_in = true;
               }
               else
               {
                  MovieClip(root).send_notification("Did you miss something?");
               }
            }
            else
            {
               MovieClip(root).send_notification("A clock?");
            }
         });
      }
      
      function frame11() : *
      {
         stop();
         this.pcmini.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-3-3-1");
         });
         this.minicalender.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-3-3-2");
         });
         this.r33_door.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_tovit")
            {
               if(MovieClip(root).tovit_status == 1 && e.target.currentFrame == 1)
               {
                  e.target.gotoAndStop(2);
               }
               else if(e.target.currentFrame == 1)
               {
                  MovieClip(root).send_notification("Wrong type of screwdriver!");
               }
            }
            else
            {
               MovieClip(root).send_notification("You need a screwdriver!");
            }
         });
         this.left_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoLeftWall);
         this.right_wall_btn.addEventListener(MouseEvent.CLICK,this.gotoRightWall);
      }
      
      function frame12() : *
      {
         stop();
         if(MovieClip(root).r34_binary_twoed)
         {
            this.binary.gotoAndStop(4);
         }
         else if(MovieClip(root).r34_binary_oned)
         {
            this.binary.gotoAndStop(3);
         }
         else if(MovieClip(root).r34_binary_opened)
         {
            this.binary.gotoAndStop(2);
         }
         this.binary.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            switch(MovieClip(root).using)
            {
               case "shared_tovit":
                  if(MovieClip(root).tovit_status == 0)
                  {
                     if(e.currentTarget.currentFrame == 1)
                     {
                        e.currentTarget.gotoAndStop(2);
                        MovieClip(root).r34_binary_opened = true;
                     }
                  }
                  break;
               case "shared_r14_battery1":
               case "shared_r14_battery2":
                  if(e.currentTarget.currentFrame < 4 && e.currentTarget.currentFrame > 1)
                  {
                     e.currentTarget.gotoAndStop(e.currentTarget.currentFrame + 1);
                     MovieClip(root)[MovieClip(root).using].visible = false;
                     MovieClip(root).using = "";
                     MovieClip(root)["shared_items_bg_mc"].visible = false;
                     if(e.currentTarget.currentFrame == 3)
                     {
                        MovieClip(root).r34_binary_oned = true;
                     }
                     else
                     {
                        MovieClip(root).r34_binary_twoed = true;
                     }
                  }
                  break;
               default:
                  if(e.currentTarget.currentFrame == 1)
                  {
                     MovieClip(root).send_notification("You need a screwdriver.");
                  }
            }
         });
      }
      
      function frame13() : *
      {
         stop();
         this.back_to_room_3_door.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-3-1");
            MovieClip(root).send_notification("Green yellow room again. You need to find something here?");
         });
      }
      
      function frame14() : *
      {
         stop();
         this.ruler.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_ruler" && e.target.currentFrame == 1)
            {
               e.target.gotoAndStop(2);
               MovieClip(root)["shared_ruler"].visible = false;
               MovieClip(root)["shared_items_bg_mc"].visible = false;
               MovieClip(root).r42_ruler_in = true;
            }
         });
      }
      
      function frame15() : *
      {
         stop();
         this.dancing_clock.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(e.target.currentFrame == 1 && MovieClip(root).using == "shared_dancing")
            {
               e.target.play();
            }
            else if(e.target.currentFrame == 1)
            {
               MovieClip(root).send_notification("You need to insert film?");
            }
            else
            {
               MovieClip(root).send_notification("A playing movie about dancing figures...");
            }
         });
      }
      
      function frame16() : *
      {
         stop();
      }
      
      function frame17() : *
      {
         stop();
         this.khoibom.alpha = 0;
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
         this.khoibom.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_cuuhoa")
            {
               e.target.alpha = e.target.alpha + 0.02;
               if(e.target.alpha >= 1)
               {
                  e.target.parent.removeChild(r1_bomb_mc);
                  e.target.parent.removeChild(khoibom);
                  MovieClip(root).done_task(27);
                  MovieClip(root).bomb_disable = true;
               }
            }
            else
            {
               MovieClip(root).send_notification("Oh my god! A time bomb!!!");
            }
         });
      }
      
      function frame18() : *
      {
         stop();
         MovieClip(root).send_notification("Oh, is it an machine???");
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
      }
      
      function frame19() : *
      {
         stop();
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
         this.pc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(e.currentTarget.currentFrame == 2)
            {
               if(MovieClip(root).using == "shared_microsd")
               {
                  e.currentTarget.gotoAndStop(3);
               }
               else
               {
                  MovieClip(root).send_notification("Pictures of Alex, Brock and Chris from the diary!");
               }
            }
         });
      }
      
      function frame20() : *
      {
         stop();
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
         this.calender.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            MovieClip(root).send_notification("A torn-out piece from a calendar");
         });
      }
      
      function frame21() : *
      {
         stop();
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
      }
      
      function frame22() : *
      {
         stop();
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
      }
      
      function frame23() : *
      {
         stop();
         this.prev_wall_btn.addEventListener(MouseEvent.CLICK,this.backtoPrevWall);
      }
   }
}
