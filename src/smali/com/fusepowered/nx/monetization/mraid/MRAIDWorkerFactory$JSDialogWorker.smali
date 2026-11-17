.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
.super Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JSDialogWorker"
.end annotation


# instance fields
.field private final action:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

.field private dialog:Landroid/app/Dialog;

.field private final dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

.field private jsResultHandled:Z

.field private final message:Ljava/lang/String;

.field private final result:Landroid/webkit/JsResult;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;)V
    .locals 1
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;
    .param p5, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 410
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

    .line 423
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    .line 424
    iput-object p4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    .line 425
    iput-object p5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->action:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 426
    return-void
.end method

.method static synthetic access$1000(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->cancelResult()V

    return-void
.end method

.method static synthetic access$1100(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->confirmResult()V

    return-void
.end method

.method private buildAlertDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 466
    const-string v0, "JS Alert"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 467
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 468
    const v0, 0x104000a

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$2;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 476
    return-void
.end method

.method private buildBeforeUnloadDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 480
    const-string v0, "Leaving page"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 481
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 482
    const v0, 0x104000a

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$3;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$4;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    return-void
.end method

.method private buildConfirmDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 500
    const-string v0, "JS Confirm:"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 501
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    const v0, 0x104000a

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$5;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$6;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$7;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    return-void
.end method

.method private buildPromptDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 527
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 528
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 529
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 530
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 531
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    .local v5, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 535
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v6, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->message:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 539
    .local v1, "editParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p1, v6}, Lcom/fusepowered/nx/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 540
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 542
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 543
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 544
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 545
    const-string v6, "Enter text"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    const-string v6, "JS Prompt:"

    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 552
    const v6, 0x104000a

    new-instance v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;

    invoke-direct {v7, p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$8;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;Landroid/widget/EditText;)V

    invoke-virtual {p2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$9;

    invoke-direct {v7, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$9;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    new-instance v6, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$10;

    invoke-direct {v6, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker$10;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;)V

    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    return-void
.end method

.method private cancelResult()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 600
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 602
    :cond_0
    return-void
.end method

.method private confirmResult()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 593
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 595
    :cond_0
    return-void
.end method

.method private confirmResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    instance-of v0, v0, Landroid/webkit/JsPromptResult;

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    .line 586
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->result:Landroid/webkit/JsResult;

    check-cast v0, Landroid/webkit/JsPromptResult;

    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method

.method private createDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$JSDialogAction:[I

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->action:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 446
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildAlertDialog(Landroid/app/AlertDialog$Builder;)V

    .line 461
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 450
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildBeforeUnloadDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildConfirmDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 458
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->buildPromptDialog(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 580
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dismissDialog()V

    .line 606
    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->jsResultHandled:Z

    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->cancelResult()V

    .line 609
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->finishWorker()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 434
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->createDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialogDismissed:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 437
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 438
    return-void
.end method
