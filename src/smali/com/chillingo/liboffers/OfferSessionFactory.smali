.class public final Lcom/chillingo/liboffers/OfferSessionFactory;
.super Ljava/lang/Object;
.source "OfferSessionFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Landroid/content/Context;)Lcom/chillingo/liboffers/OfferSession;
    .locals 1
    .param p0, "listener"    # Lcom/chillingo/liboffers/OfferSessionListener;
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "storeType"    # Lcom/chillingo/liboffers/OfferSession$StoreType;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/chillingo/liboffers/OfferSessionImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/chillingo/liboffers/OfferSessionImpl;-><init>(Lcom/chillingo/liboffers/OfferSessionListener;Ljava/lang/String;Lcom/chillingo/liboffers/OfferSession$StoreType;Landroid/content/Context;)V

    return-object v0
.end method
