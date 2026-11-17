.class public Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method static final createCalendarWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    .locals 1
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 78
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    return-object v0
.end method

.method static final createJSDialogWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    .locals 6
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsResult;
    .param p4, "action"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;

    .prologue
    .line 87
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$JSDialogAction;)V

    .line 88
    .local v0, "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$JSDialogWorker;->showDialog(Landroid/app/Activity;)V

    .line 89
    return-object v0
.end method

.method static final createStorePictureWorker(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDDialogWorker;
    .locals 1
    .param p0, "container"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {v0, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V

    .line 70
    .local v0, "worker":Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$002(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->storePicture()V

    .line 72
    return-object v0
.end method
