.class public Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;
.super Ljava/lang/Object;


# instance fields
.field private acceptCallback:Ljava/lang/Runnable;

.field private declineCallback:Ljava/lang/Runnable;

.field private processed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->processed:Z

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->processed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->processed:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->acceptCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public decline()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->processed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->processed:Z

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationJsInterface;->declineCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
