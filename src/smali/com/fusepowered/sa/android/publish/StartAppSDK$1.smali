.class Lcom/fusepowered/sa/android/publish/StartAppSDK$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/StartAppSDK;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/StartAppSDK;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/StartAppSDK;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;->b:Lcom/fusepowered/sa/android/publish/StartAppSDK;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/model/SdkDownloadRequest;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/model/SdkDownloadRequest;-><init>()V

    new-instance v1, Lcom/fusepowered/sa/android/publish/model/AdPreferences;

    invoke-direct {v1}, Lcom/fusepowered/sa/android/publish/model/AdPreferences;-><init>()V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/fusepowered/sa/android/publish/model/SdkDownloadRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/fusepowered/sa/android/publish/model/AdPreferences;)V

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/StartAppSDK$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/fusepowered/sa/android/publish/b$a;->d:Lcom/fusepowered/sa/android/publish/b$a;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/b;->a(Lcom/fusepowered/sa/android/publish/b$a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/fusepowered/sa/android/publish/e/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/model/BaseRequest;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fusepowered/sa/android/publish/f/l; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "Error occured while sending download event"

    invoke-static {v1, v2, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
