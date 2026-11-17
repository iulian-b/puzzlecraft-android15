.class public final Lcom/chillingo/liboffers/http/OfferDataDownloadParams;
.super Ljava/lang/Object;
.source "OfferDataDownloadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/liboffers/http/OfferDataDownloadParams$1;
    }
.end annotation


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public bundleId:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public screenSize:Ljava/lang/String;

.field public sdk:Ljava/lang/String;

.field public storeType:Ljava/lang/String;

.field public uname:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public setStoreType(Lcom/chillingo/liboffers/OfferSession$StoreType;)V
    .locals 2
    .param p1, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;

    .prologue
    .line 28
    sget-object v0, Lcom/chillingo/liboffers/http/OfferDataDownloadParams$1;->$SwitchMap$com$chillingo$liboffers$OfferSession$StoreType:[I

    invoke-virtual {p1}, Lcom/chillingo/liboffers/OfferSession$StoreType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognised store type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_0
    const-string v0, "amazon"

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    .line 44
    :goto_0
    return-void

    .line 34
    :pswitch_1
    const-string v0, "googleplay"

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "samsung"

    iput-object v0, p0, Lcom/chillingo/liboffers/http/OfferDataDownloadParams;->storeType:Ljava/lang/String;

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
