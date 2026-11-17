.class Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;
.super Ljava/lang/Object;
.source "ConversionAnalyticsPoster_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->logAppstoreOpenEventForOffer(Lcom/chillingo/liboffers/model/Offer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

.field final synthetic val$index:I

.field final synthetic val$offer:Lcom/chillingo/liboffers/model/Offer;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Lcom/chillingo/liboffers/model/Offer;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    iput-object p2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iput p3, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->this$0:Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;

    iget-object v2, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->val$offer:Lcom/chillingo/liboffers/model/Offer;

    iget v3, p0, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_$1;->val$index:I

    invoke-static {v1, v2, v3}, Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;->access$001(Lcom/chillingo/liboffers/telemetry/ConversionAnalyticsPoster_;Lcom/chillingo/liboffers/model/Offer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ConversionAnalyticsPoster_"

    const-string v2, "A runtime exception was thrown while executing code in a runnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
