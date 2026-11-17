.class Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;
.super Ljava/lang/Object;
.source "ConversionAnalyticsPoster_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->logSessionStartEventWithData(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

.field final synthetic val$data:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;->this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    iput-object p2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;->val$data:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;->this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$2;->val$data:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->access$101(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ConversionAnalyticsPoster_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
