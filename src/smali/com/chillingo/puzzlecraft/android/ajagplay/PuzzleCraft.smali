.class public abstract Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "PuzzleCraft.java"

# interfaces
.implements Lcom/chillingo/libterms/TermsListener;
.implements Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;


# static fields
.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field private static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field private static final DIALOG_VILLAGE_NAME:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PuzzleCraftAndroid"

.field private static villageName:Ljava/lang/String;


# instance fields
.field private mBillingAvailable:Z

.field private mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

.field private mDevPayload:Ljava/lang/String;

.field private mDisplayTermsDialog:Z

.field private mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mTerms:Lcom/chillingo/libterms/Terms;

.field purchaseFinishedListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "-1"

    sput-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->villageName:Ljava/lang/String;

    .line 572
    const-string v0, "helloworld"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    .line 74
    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDisplayTermsDialog:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDevPayload:Ljava/lang/String;

    .line 532
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$11;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    iput-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->purchaseFinishedListener:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public static InitSounds()V
    .locals 1

    .prologue
    .line 406
    const-string v0, "SFX/123_final_moves.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 407
    const-string v0, "SFX/achievement.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 408
    const-string v0, "SFX/apple.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 409
    const-string v0, "SFX/bonus_collect.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 410
    const-string v0, "SFX/bonus_fall.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 411
    const-string v0, "SFX/bonus_final.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 412
    const-string v0, "SFX/carrot.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 413
    const-string v0, "SFX/chicken.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 414
    const-string v0, "SFX/coal.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 415
    const-string v0, "SFX/collect_tax.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 416
    const-string v0, "SFX/cow.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 417
    const-string v0, "SFX/diamond.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 418
    const-string v0, "SFX/earth.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 419
    const-string v0, "SFX/experience_points_bar.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 420
    const-string v0, "SFX/game_end.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 421
    const-string v0, "SFX/gold.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 422
    const-string v0, "SFX/grain.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 423
    const-string v0, "SFX/grass.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 424
    const-string v0, "SFX/intro_start.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 425
    const-string v0, "SFX/intro1.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 426
    const-string v0, "SFX/intro2.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 427
    const-string v0, "SFX/intro3.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 428
    const-string v0, "SFX/intro4.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 429
    const-string v0, "SFX/iron.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 430
    const-string v0, "SFX/level_up.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 431
    const-string v0, "SFX/loader_close.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 432
    const-string v0, "SFX/loader_open.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 433
    const-string v0, "SFX/main_menu_enter.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 434
    const-string v0, "SFX/methan_explosion.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 435
    const-string v0, "SFX/methane.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 436
    const-string v0, "SFX/money_fields.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 437
    const-string v0, "SFX/money_mine.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 438
    const-string v0, "SFX/pig.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 439
    const-string v0, "SFX/rat.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 440
    const-string v0, "SFX/rat_jump.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 441
    const-string v0, "SFX/resource_gain.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 442
    const-string v0, "SFX/rubble.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 443
    const-string v0, "SFX/selection_accent.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 444
    const-string v0, "SFX/selection_build_longer.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 445
    const-string v0, "SFX/selection_buy.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 446
    const-string v0, "SFX/selection_error.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 447
    const-string v0, "SFX/selection_menu.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 448
    const-string v0, "SFX/selection_normal.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 449
    const-string v0, "SFX/silver.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 450
    const-string v0, "SFX/stone.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 451
    const-string v0, "SFX/TOOL_COAL_TO_SILVER.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 452
    const-string v0, "SFX/TOOL_COMPOST.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 453
    const-string v0, "SFX/TOOL_DRILL.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 454
    const-string v0, "SFX/TOOL_GRASS_GRAIN.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 455
    const-string v0, "SFX/TOOL_guarddog.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 456
    const-string v0, "SFX/TOOL_hound.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 457
    const-string v0, "SFX/TOOL_LUNCHBOX.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 458
    const-string v0, "SFX/tool_no_use.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 459
    const-string v0, "SFX/TOOL_RAT.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 460
    const-string v0, "SFX/TOOL_SAMPLING.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 461
    const-string v0, "SFX/TOOL_SILVER_TO_COAL.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 462
    const-string v0, "SFX/TOOL_WOLF.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 463
    const-string v0, "SFX/trophy_fields.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 464
    const-string v0, "SFX/trophy_mine.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 465
    const-string v0, "SFX/wolf.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 466
    const-string v0, "SFX/wolf_jump.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 467
    const-string v0, "SFX/wood.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 468
    const-string v0, "SFX/worker1.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 469
    const-string v0, "SFX/worker2.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 470
    const-string v0, "SFX/zakonczenie_pol.wav"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadEffect(Ljava/lang/String;)V

    .line 472
    const-string v0, "SFX/sound_farm1.ogg"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 473
    const-string v0, "SFX/mine_ambient.ogg"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 474
    const-string v0, "SFX/sound_farm1_old.ogg"

    invoke-static {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->villageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
    .param p1, "x1"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->processPurchase(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    return p1
.end method

.method static synthetic access$402(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDevPayload:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mIsAudioFocus:Z

    return v0
.end method

.method static synthetic access$600(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Lcom/chillingo/libterms/Terms;
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mTerms:Lcom/chillingo/libterms/Terms;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDisplayTermsDialog:Z

    return v0
.end method

.method static synthetic access$900()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method private createDialog(II)Landroid/app/Dialog;
    .locals 6
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 354
    const v3, 0x7f050042

    invoke-virtual {p0, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108008a

    .line 359
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 360
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 361
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    .line 362
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050043

    new-instance v5, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;

    invoke-direct {v5, p0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$8;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Landroid/net/Uri;)V

    .line 363
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getCurrentApiVersion()I
    .locals 1

    .prologue
    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getVillageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->villageName:Ljava/lang/String;

    .line 79
    .local v0, "temp":Ljava/lang/String;
    const-string v1, "-1"

    sput-object v1, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->villageName:Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method private hideSystemUi()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 308
    return-void
.end method

.method private processPurchase(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;)V
    .locals 7
    .param p1, "info"    # Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "productSKU":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "knownSku":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 554
    .local v2, "sku":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    iget-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-virtual {v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->flagEndAsync()V

    .line 556
    iget-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;

    invoke-direct {v6, p0, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$12;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;)V

    invoke-virtual {v5, p1, v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->consumeAsync(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeFinishedListener;)V

    .line 553
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "sku":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 345
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 347
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 348
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 350
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method public static showExitDialog()V
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    sget-object v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10;

    invoke-direct {v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public ageVerificationCriteriaMet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "ageVerificationCriteriaMet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iput-boolean v2, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDisplayTermsDialog:Z

    .line 579
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->initializeAds()V

    .line 581
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 583
    return-void
.end method

.method public ageVerificationCriteriaNotMet()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "ageVerificationCriteriaNotMet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method public ageVerificationPendingDialogDisplay()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "ageVerificationPendingDialogDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mDisplayTermsDialog:Z

    .line 594
    return-void
.end method

.method public checkBillingService()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$4;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$4;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;

    invoke-direct {v0, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$5;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract getTermsCompilantLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
.end method

.method protected abstract getTermsIsPreCoppa()Z
.end method

.method public isBillingAvaible()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 214
    const-string v0, "PuzzleCraftAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "PuzzleCraftAndroid"

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getCurrentApiVersion()I

    move-result v1

    .line 237
    .local v1, "currentApiVersion":I
    const/16 v5, 0x13

    if-lt v1, v5, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->hideSystemUi()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getTermsIsPreCoppa()Z

    move-result v5

    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getTermsCompilantLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, p0, v5, v6, v7}, Lcom/chillingo/libterms/TermsFactory;->getInstance(Landroid/app/Activity;Lcom/chillingo/libterms/TermsListener;ZLcom/chillingo/libterms/Terms$TermsComplianceLevel;Lcom/chillingo/libterms/TermsUIConfig;)Lcom/chillingo/libterms/Terms;

    move-result-object v5

    iput-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mTerms:Lcom/chillingo/libterms/Terms;

    .line 241
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "packageName":Ljava/lang/String;
    invoke-super {p0, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setPackageName(Ljava/lang/String;)V

    .line 244
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkO73IjFjwCxvREPwupqxltULV+Qac+zJquugQ/rd+aCVOIwIkhSMjuZCU2RDY1MWZkr3WVGdBlM+2eyNP2rmKN82flWBn6Cv/e3gYLe8QmeMM4jh7rnQIdwlCmzHyB+tK6jlqtrvpmZFfZOUlvzr9waunWALYBlbA4I36IDFVhDMxyL4WoK94cDQkdIGm3H6mNkwj0QU8rRKhvsF4pKsfceIFofbJJepvBh/7MjEDuAhyYHaBe5HJ4Ekl7yxA20cs2+v6HEgtx2FDMe1WYshSuraR0try70VVKaMWBBQyCul/Ez2XMQG4RQR+NOjvY/ebRQpeoIRaxalYONQf+EkAwIDAQAB"

    .line 245
    .local v0, "billingPubKey":Ljava/lang/String;
    new-instance v5, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-direct {v5, p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    .line 250
    iget-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    new-instance v6, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;

    invoke-direct {v6, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$7;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    invoke-virtual {v5, v6}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->startSetup(Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnIabSetupFinishedListener;)V

    .line 267
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->setContentView(I)V

    .line 268
    invoke-static {}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->InitSounds()V

    .line 269
    const v5, 0x7f0a0019

    invoke-virtual {p0, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object v5, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 270
    iget-object v6, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const v5, 0x7f0a0018

    invoke-virtual {p0, v5}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-virtual {v6, v5}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 273
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->isTaskRoot()Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 275
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "intentAction":Ljava/lang/String;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const-string v5, "android.intent.action.MAIN"

    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->finish()V

    .line 282
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentAction":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 325
    :pswitch_0
    const v0, 0x7f050006

    const v1, 0x7f050005

    invoke-direct {p0, v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_1
    const v0, 0x7f050004

    const v1, 0x7f050003

    invoke-direct {p0, v0, v1}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 313
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    invoke-virtual {v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;->dispose()V

    .line 315
    iput-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingHelper:Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mBillingAvailable:Z

    .line 318
    :cond_0
    iput-object v1, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mTerms:Lcom/chillingo/libterms/Terms;

    .line 319
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 86
    const/4 v1, 0x1

    .line 87
    .local v1, "result":Z
    const-string v2, "cocos activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 92
    .local v0, "audio":Landroid/media/AudioManager;
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 93
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 96
    invoke-virtual {v0, v5, v5}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_0
.end method

.method public abstract onMainMenuVisibilityChanged(Z)V
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 380
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 386
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume(Lcom/chillingo/puzzlecraft/android/ajagplay/CocosSurfaceViewStateChangeListener;)V

    .line 387
    iget-object v0, p0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;

    invoke-direct {v1, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$9;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public onSurfaceViewResumed()V
    .locals 0

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->cocosResumed()V

    .line 606
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->getCurrentApiVersion()I

    move-result v0

    .line 288
    .local v0, "currentApiVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->hideSystemUi()V

    .line 292
    .end local v0    # "currentApiVersion":I
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 293
    return-void
.end method

.method public promptVillageName()V
    .locals 5

    .prologue
    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v3, "Title"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v3, "Message"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 111
    .local v2, "input":Landroid/widget/EditText;
    new-instance v3, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$1;

    invoke-direct {v3, p0, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$1;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v3, "Ok"

    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;

    invoke-direct {v4, p0, v2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$2;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string v3, "Cancel"

    new-instance v4, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$3;

    invoke-direct {v4, p0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$3;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 158
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "devPayload"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft$6;-><init>(Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/puzzlecraft/android/ajagplay/PuzzleCraft;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
