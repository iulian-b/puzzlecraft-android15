.class synthetic Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;
.super Ljava/lang/Object;
.source "ChartboostAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/ChartboostAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->values()[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    :try_start_0
    sget-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fusepowered/ads/adapters/ChartboostAdAdapter$2;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
