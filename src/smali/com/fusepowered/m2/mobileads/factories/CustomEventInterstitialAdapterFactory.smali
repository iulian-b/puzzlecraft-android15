.class public Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapterFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;
    .locals 7
    .param p0, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "broadcastIdentifier"    # J
    .param p5, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/fusepowered/m2/common/AdReport;",
            ")",
            "Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;->internalCreate(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/CustomEventInterstitialAdapterFactory;

    .line 15
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;
    .locals 8
    .param p1, "moPubInterstitial"    # Lcom/fusepowered/m2/mobileads/MoPubInterstitial;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "broadcastIdentifier"    # J
    .param p6, "adReport"    # Lcom/fusepowered/m2/common/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/fusepowered/m2/common/AdReport;",
            ")",
            "Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/m2/mobileads/CustomEventInterstitialAdapter;-><init>(Lcom/fusepowered/m2/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/fusepowered/m2/common/AdReport;)V

    return-object v0
.end method
