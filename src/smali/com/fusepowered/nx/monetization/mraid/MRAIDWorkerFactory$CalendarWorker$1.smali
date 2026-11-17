.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$OnCalendarEntryClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 1
    .param p1, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-static {v0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->access$700(Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 321
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker$1;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWorkerFactory$CalendarWorker;->dismissDialog()V

    .line 323
    :cond_0
    return-void
.end method
