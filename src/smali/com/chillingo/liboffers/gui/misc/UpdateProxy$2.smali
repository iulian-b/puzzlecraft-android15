.class synthetic Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;
.super Ljava/lang/Object;
.source "UpdateProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/misc/UpdateProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$chillingo$liboffers$OfferSession$OffersUpdateMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->values()[Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersUpdateMethod:[I

    :try_start_0
    sget-object v0, Lcom/chillingo/liboffers/gui/misc/UpdateProxy$2;->$SwitchMap$com$chillingo$liboffers$OfferSession$OffersUpdateMethod:[I

    sget-object v1, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->TIMER:Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;

    invoke-virtual {v1}, Lcom/chillingo/liboffers/OfferSession$OffersUpdateMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
