.class Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsPoster_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->logAdvertisingIdAvailabilityEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_$1;->this$0:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_$1;->this$0:Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;

    invoke-static {v1}, Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;->access$001(Lcom/chillingo/liboffers/telemetry/GoogleAnalyticsPoster_;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "GoogleAnalyticsPoster_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
