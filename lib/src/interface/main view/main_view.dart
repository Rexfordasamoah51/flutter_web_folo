import 'package:customprompt/customprompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_folo/src/interface/theme/color/colors.dart';
import 'package:flutter_web_folo/src/scrollbar/scroll_set.dart';
import 'package:flutter_web_folo/src/scrollbar/scrollbar.dart';
import 'package:graphx/graphx.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../assets.dart';
import 'package:flutter_web_folo/src/supplier/test.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
    ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: VxAppBar(
        elevation: 0,
        centerTitle: true,
        title: Image(
          image: Images.grafiiti,
        ),
        backgroundColor: kFoloBlue,
      ),
      backgroundColor: kFoloColorWhite,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: SmoothScrollWeb(
          controller: controller,
          child: ScrollBar(
            child: VxScrollVertical(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              child: [
                navBar(),
                header(),
                lowerSection(),
                cardLayoutSection(),
                belowCardLayout(),
                title(),
                extractLayoutDesign(),
                belowLayout(),
                phoneIlusstratorSection(),
                aboveFooter(),
                submitBtn(context),
                footer()
              ].vStack(),
            ),
            controller: controller,
            visibleHeight: MediaQuery.of(context).size.height,
            scrollThumbColor: Colors.blue.withOpacity(0.65),
            scrollbarColor: Colors.blue.withOpacity(0.25),
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return VxBox(
            child: 'Made with Love By Prank'
                .text
                .extraBold
                .white
                .uppercase
                .center
                .make())
        .color(Color(0xff080940))
        .width(double.infinity)
        .height(50)
        .alignCenter
        .make()
        .pOnly(top: 50);
  }

  Widget submitBtn(context) {
    return GestureDetector(
      onTap: () {
        CustomPrompt(
      context: context,
      type: Type.confirm,
      animDuration: 300,
      transparent: true,
      color: Colors.blue,
      title: 'Confirm',
      content: 'Are you sure?',
      curve: Curves.easeIn,
      btnOneText: Text('Yes'),
      btnOneColor: Colors.green,
      btnTwoColor: Colors.red,
      btnTwoText: Text('No'),
      btnOneOnClick: () {
          print('Button one clicked');
      },
      btnTwoOnClick: () {
          print('Button two clicked');
      },
  ).alert();
      },
      child: VxBox(
        child: 'Submit your review'.text.light.white.make(),
      )
          .withDecoration(BoxDecoration(
              color: kFoloBlue, borderRadius: BorderRadius.circular(10)))
          .height(50)
          .width(150)
          .alignCenter
          .make()
          .centered()
          .pOnly(top: 50),
    );
  }

  Widget aboveFooter() {
    return HStack([
      'Read What Our\nClients Have To\nShare!'
          .text
          .extraBold
          .fontFamily(Fonts.dis)
          .color(kFoloVariantColor)
          .size(30)
          .make()
          .pOnly(right: 50),
      cardBump().pOnly(left: 50, right: 30),
      cardBump()
    ]).centered().pOnly(top: 60);
  }

  Widget cardBump() {
    return VxBox(
            child: VStack([
      VxRating(
        onRatingUpdate: (value) {},
        count: 5,
        selectionColor: Colors.teal,
        size: 20,
      ),
      SizedBox(
        height: 20,
      ),
      'This Website Delivers Fast And Provides\nSuper Service! The Interface Is Very EasyTo\nUse, And I Completely Trus...'
          .text
          .extraBold
          .fontFamily(Fonts.display)
          .color(Colors.black)
          .make(),
      SizedBox(
        height: 20,
      ),
      '- Prank'
          .text
          .extraBold
          .fontFamily(Fonts.dis)
          .color(kFoloVariantColor)
          .make(),
    ]))
        .alignCenter
        .height(150)
        .width(350)
        .withDecoration(
          BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: Color(0xffF5F6FC),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4.0,
                offset: const Offset(0.0, 4.0),
              ),
            ],
          ),
        )
        .make();
  }

  Widget phoneIlusstratorSection() {
    return VxBox(
        child: HStack([
      Image(
        image: Images.illustration2,
      ).pOnly(right: 30),
      VStack(
        [
          'Why Idigic Is The Best\nSite To Buy Instagram\mFollowers'
              .text
              .extraBold
              .color(kFoloVariantColor)
              .fontFamily(Fonts.dis)
              .size(30)
              .make(),
          SizedBox(
            height: 20,
          ),
          'If you are looking to get more people on board then the easiest way to go about it would\nbe to get a lot of followers. The simplest method to get more followers for your brand with\na push of a button would be to buy Instagram followers from iDigic. More real followers\nmean that more people are interested in what your brand has to say. Also, when you have\na high follower count, you will gain credibility with other brands in your niche as well as\nother people. You can find great prices to increase your follower count instantly.'
              .text
              .size(10)
              .fontFamily(Fonts.display)
              .light
              .make(),
          SizedBox(
            height: 20,
          ),
          btnDesign(0)
        ],
      ),
    ])).make().centered().pOnly(top: 30);
  }

  Widget belowLayout() {
    return VxBox(
            child: HStack(
      [
        VStack([
          'Reasons To Buy\nInstagram Followers'
              .text
              .extraBold
              .fontFamily(Fonts.dis)
              .color(kFoloColorWhite)
              .size(40)
              .make(),
          SizedBox(
            height: 25,
          ),
          'There are several advantages as to why you should consider\nbuying Instagram followers.We will list down a few benefits you can look\nforward to when you’re buying Instagram services from iDigic.'
              .text
              .extraBold
              .fontFamily(Fonts.display)
              .color(kFoloColorWhite)
              .make(),
          SizedBox(
            height: 25,
          ),
          VStack(
            [
              circularCard(
                  'Get more brand awareness',
                  Color(0xffF9F9F9).withAlpha(150),
                  EdgeInsets.only(left: 20, top: 20)),
              circularCard('Save time and money', kFoloBlue,
                  EdgeInsets.only(left: 20, top: 10)),
              circularCard('Become an influencer', kFoloBlue,
                  EdgeInsets.only(left: 20, top: 10)),
              circularCard('Beat bigger brands', kFoloBlue,
                  EdgeInsets.only(left: 20, top: 10)),
              circularCard('Building trust', kFoloBlue,
                  EdgeInsets.only(left: 20, top: 10)),
            ],
            crossAlignment: CrossAxisAlignment.start,
          ),
        ]).pOnly(top: 50),
        VxBox(
          child: Column(
            children: [
              Image(
                image: Images.illustration1,
              ).pOnly(top: 50),
              SizedBox(
                height: 40,
              ),
              'Get more brand awareness'
                  .text
                  .extraBold
                  .fontFamily(Fonts.dis)
                  .size(20)
                  .color(kFoloColorWhite)
                  .make(),
              SizedBox(
                height: 20,
              ),
              'If you are looking to get more people on board then the easiest way to go about it would\nbe to get a lot of followers. The simplest method to get more followers for your brand with\na push of a button would be to buy Instagram followers from iDigic. More real followers\nmean that more people are interested in what your brand has to say. Also, when you have\na high follower count, you will gain credibility with other brands in your niche as well as\nother people. You can find great prices to increase your follower count instantly.'
                  .text
                  .size(10)
                  .fontFamily(Fonts.display)
                  .light
                  .color(kFoloColorWhite)
                  .make(),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ).make()
      ],
      alignment: MainAxisAlignment.spaceBetween,
    ).pOnly(left: 330, right: 300))
        .color(kFoloBlue)
        .width(double.infinity)
        .height(500)
        .make()
        .centered();
  }

  Widget circularCard(String text, [color, align]) {
    return VxBox(
            child: text.text
                .fontFamily(Fonts.display)
                .color(kFoloColorWhite)
                .make())
        .height(50)
        .padding(align)
        .width(250)
        .withDecoration(BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)))
        .make();
  }

  VStack extractLayoutDesign() {
    return VStack(
      [extractLayout().centered().pOnly(top: 80), extractLayout2().centered()],
    );
  }

  HStack extractLayout2() {
    return HStack(
      [
        clapLayout('100% Customer Satisfaction', Images.group136),
        clapLayout('Drop Guarantee', Images.group137),
        clapLayout('Secure Payment Methods', Images.group138)
      ],
    );
  }

  HStack extractLayout() {
    return HStack(
      [
        clapLayout('Guaranteed Instant Delivery', Images.group133),
        clapLayout(
            'High-Quality Followers', Images.group134, Color(0xffF9F9F9)),
        clapLayout('24/7 Support', Images.group135)
      ],
    );
  }

  Widget clapLayout(String titel, asset, [color]) {
    return VxBox(
            child: VStack([
      Image(
        image: asset,
      ),
      SizedBox(
        height: 25,
      ),
      titel.text.extraBold
          .fontFamily(Fonts.dis)
          .color(kFoloVariantColor)
          .make(),
      SizedBox(
        height: 25,
      ),
      'We have instant delivery on all our Instagram\nfollowers packages which means almost no\ndelays for you. As soon as your payment is\nverified, real followers are credited to your\naccount without any delays.'
          .text
          .size(10)
          .fontFamily(Fonts.display)
          .light
          .make(),
    ]))
        .withDecoration(BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(30),
        ))
        .alignCenter
        .height(280)
        .width(350)
        .make()
        .pOnly(top: 30, left: 25);
  }

  Widget title() {
    return VxBox(
        child: VStack(
      [
        'Why We Are The Best!'
            .text
            .extraBold
            .fontFamily(Fonts.dis)
            .color(kFoloVariantColor)
            .size(40)
            .make(),
        SizedBox(
          height: 25,
        ),
        'If you’re looking for more engagement numbers for your brand, then your best bet is to get Instagram followers. Buying\nInstagram follower is easy and it saves time because they are added instantly to your account. Also, when you have a high\nfollower count, you will gain credibility with other brands in your niche as well as other people.'
            .text
            .extraBold
            .fontFamily(Fonts.display)
            .make(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    )).make().centered().pOnly(top: 50);
  }

  Widget belowCardLayout() {
    return VxBox(
        child: HStack([
      VStack(
        [
          'How To Buy Real\nInstagram Followers'
              .text
              .extraBold
              .fontFamily(Fonts.dis)
              .color(kFoloVariantColor)
              .size(40)
              .make(),
          SizedBox(
            height: 25,
          ),
          'Get closer to your goals\nwith active Instagram followers'
              .text
              .extraBold
              .fontFamily(Fonts.dis)
              .color(kFoloVariantColor)
              .make(),
          SizedBox(
            height: 25,
          ),
          'Getting more followers for your IG account just got a whole lot easier'
              .text
              .size(10)
              .fontFamily(Fonts.display)
              .light
              .make(),
          SizedBox(
            height: 20,
          ),
          "Followers are working. Start-time: 0-3 hours. Delivery speed: 100-500\nfollowers per hour. If you experience minor drops, don’t worry: we refill lost\nfollowers automatically, daily!"
              .text
              .light
              .fontFamily(Fonts.display)
              .color(kFoloVariantColor)
              .make()
        ],
        crossAlignment: CrossAxisAlignment.start,
      ),
      Image(
        image: Images.illustration,
        height: 550,
      )
    ])).make().centered().pOnly(top: 40, left: 30);
  }

  Widget cardLayoutSection() {
    return VxBox(
        child: HStack(
      [cardDesign(), cardDesign(), cardDesign(), cardDesign()],
      alignment: MainAxisAlignment.center,
    )).make();
  }

  Widget cardOnHover() {
    return VxBox(
            child: VStack(
      [
        Chip(
          backgroundColor: Colors.grey,
          label: '25% OFF'.text.light.color(Colors.white).make(),
        ).pOnly(top: 30),
        "250 Followers".text.bold.color(kFoloColorWhite).make().pOnly(top: 20),
        "GHC25".text.bold.color(Colors.white).make().pOnly(top: 20),
        Divider(
          height: 20,
        ),
        VStack(
          [
            dotWithText('Guaranteed Instant Delivery', kFoloColorWhite),
            dotWithText('High Quality Followers', kFoloColorWhite),
            dotWithText('Automatic Refills', kFoloColorWhite),
            dotWithText('No Password Required', kFoloColorWhite),
            dotWithText('24/7 Live Chat Support', kFoloColorWhite),
          ],
          crossAlignment: CrossAxisAlignment.start,
        ),
        SizedBox(
          height: 20,
        ),
        VxBox(child: "Buy Now".text.bold.color(kFoloVariantColor).make())
            .withDecoration(BoxDecoration(
                color: kFoloColorWhite,
                border: Border.all(color: kFoloColorWhite, width: 2),
                borderRadius: BorderRadius.circular(30)))
            .height(50)
            .width(150)
            .alignCenter
            .make()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ))
        .withDecoration(BoxDecoration(
          color: kFoloBlue,
          borderRadius: BorderRadius.circular(30),
        ))
        .height(450)
        .width(250)
        .make()
        .pOnly(top: 30, left: 25);
  }

  Widget cardDesign() {
    return VxBox(
            child: VStack(
      [
        Chip(
          backgroundColor: kFoloBlue,
          label: '25% OFF'.text.light.color(Colors.white).make(),
        ).pOnly(top: 30),
        "250 Followers"
            .text
            .bold
            .color(kFoloVariantColor)
            .make()
            .pOnly(top: 20),
        "GHC25".text.bold.color(Colors.red).make().pOnly(top: 20),
        Divider(
          height: 20,
        ),
        VStack(
          [
            dotWithText('Guaranteed Instant Delivery', kFoloVariantColor),
            dotWithText('High Quality Followers', kFoloVariantColor),
            dotWithText('Automatic Refills', kFoloVariantColor),
            dotWithText('No Password Required', kFoloVariantColor),
            dotWithText('24/7 Live Chat Support', kFoloVariantColor),
          ],
          crossAlignment: CrossAxisAlignment.start,
        ),
        SizedBox(
          height: 20,
        ),
        VxBox(child: "Buy Now".text.bold.color(kFoloVariantColor).make())
            .withDecoration(BoxDecoration(
                // color: kFoloBlue,
                border: Border.all(color: kFoloBlue, width: 2),
                borderRadius: BorderRadius.circular(30)))
            .height(50)
            .width(150)
            .alignCenter
            .make()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ))
        .withDecoration(BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(30),
        ))
        .height(450)
        .width(250)
        .make()
        .pOnly(top: 30, left: 25);
  }

  HStack dotWithText(String text, textColor) {
    return HStack(
      [
        VxBox()
            .height(10)
            .width(10)
            .withDecoration(BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(100),
            ))
            .make()
            .pOnly(top: 20),
        text.text.light.color(textColor).make().pOnly(top: 18, left: 10),
      ],
      crossAlignment: CrossAxisAlignment.start,
    );
  }

  Widget lowerSection() {
    return VxBox(
        child: HStack([
      Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: Images.pattern1,
          ),
          Image(
            image: Images.align,
          )
        ],
      ),
      VStack(
        [
          'Buy High-Quality\nInstagram Followers\nPackages From Idigic'
              .text
              .extraBold
              .fontFamily(Fonts.dis)
              .color(kFoloVariantColor)
              .size(40)
              .make(),
          SizedBox(
            height: 25,
          ),
          'To experience our quality and instant delivery speed, try our\ninstagram followers trial (100% free)'
              .text
              .light
              .color(kFoloBlue)
              .make(),
          SizedBox(
            height: 25,
          ),
          'News 7 January 2020'.text.light.color(Colors.red).make(),
          SizedBox(
            height: 20,
          ),
          "Followers are working. Start-time: 0-3 hours. Delivery speed: 100-500\nfollowers per hour. If you experience minor drops, don’t worry: we refill lost\nfollowers automatically, daily!"
              .text
              .light
              .color(kFoloVariantColor)
              .make()
        ],
        crossAlignment: CrossAxisAlignment.start,
      )
    ])).make().centered();
  }

  Widget header() {
    return VxBox(
        child: Stack(children: [
      Image(
        image: Images.download4,
        height: 600,
      ).pOnly(left: 150),
      VStack([
        'Buy Real'
            .text
            .extraBold
            .fontFamily(Fonts.dis)
            .color(kFoloVariantColor)
            .size(60)
            .make(),
        'Instagram'
            .text
            .extraBold
            .fontFamily(Fonts.dis)
            .color(kFoloVariantColor)
            .size(60)
            .make(),
        'Followers'
            .text
            .extraBold
            .fontFamily(Fonts.dis)
            .color(kFoloVariantColor)
            .size(60)
            .make(),
        SizedBox(
          height: 20,
        ),
        btnDesign(0)
      ]).pOnly(top: 50)
    ])).make().centered();
  }

  Widget navBar() {
    return VxBox(
      child: HStack(
        [
          Image(
            image: Images.logo1,
          ),
          'Home'.text.light.make().pOnly(left: 25.0),
          'Buy Instagram Likes'.text.light.make().pOnly(left: 25.0),
          'Buy Instagram Followers'
              .text
              .light
              .color(kFoloBlue)
              .make()
              .pOnly(left: 25.0),
          'Buy Instagram Views'.text.light.make().pOnly(left: 25.0),
          'Contact Us'.text.light.make().pOnly(left: 25.0),
          btnDesign(20)
        ],
      ),
    ).make().pOnly(top: 20).centered();
  }

  Widget btnDesign(left) {
    return VxBox(
      child: 'FREE TRIAL'.text.light.white.make(),
    )
        .withDecoration(BoxDecoration(
            color: kFoloBlue, borderRadius: BorderRadius.circular(10)))
        .height(50)
        .width(150)
        .alignCenter
        .margin(EdgeInsets.only(left: left))
        .make();
  }
}
