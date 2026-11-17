.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
.super Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarWorker"
.end annotation


# instance fields
.field private final closeListener:Landroid/view/View$OnClickListener;

.field private confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

.field private final data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

.field private final listener:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

.field private final onProceed:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 1
    .param p1, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p2, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 314
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->listener:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    .line 326
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$2;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$3;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->onProceed:Landroid/view/View$OnClickListener;

    .line 310
    iput-object p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .line 311
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->showDialog(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method static synthetic access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
    .param p1, "x1"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->addCalendarEntry(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    return-object v0
.end method

.method private addCalendarEntry(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 4
    .param p1, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-static {v1, p1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->createCalendarEntry(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    .line 395
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    throw v1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->dismiss()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    .line 357
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 399
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 363
    new-instance v1, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-direct {v1, p1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    .line 364
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->listener:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnCalendarClickedListener(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;)V

    .line 365
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->getSupportLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 367
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->queryCalendarsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->addCalendars(Ljava/util/List;)V

    .line 369
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "You are requested to add a calendar event. Please choose a calendar to add the event to:"

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setBodyText(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setButtonText(Ljava/lang/String;)V

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->show()V

    .line 384
    :goto_1
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->onProceed:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "You are requested to add a calendar event."

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setBodyText(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->confirmationDialog:Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;

    const-string v2, "Proceed"

    invoke-virtual {v1, v2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;->setButtonText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create confirmation dialog when creating calendar event"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->getContainer()Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v1

    const-string v2, ""

    sget-object v3, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->finishWorker()V

    goto :goto_1
.end method
