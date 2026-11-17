.class public Lcom/fusepowered/ads/adapters/MRaidRegistry;
.super Ljava/lang/Object;
.source "MRaidRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRaidRegistry"

.field public static registeredProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ads/adapters/MRaidAdAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fusepowered/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(I)Lcom/fusepowered/ads/adapters/MRaidAdAdapter;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 26
    sget-object v0, Lcom/fusepowered/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    return-object v0
.end method

.method public static register(Lcom/fusepowered/ads/adapters/MRaidAdAdapter;)I
    .locals 2
    .param p0, "provider"    # Lcom/fusepowered/ads/adapters/MRaidAdAdapter;

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "MRaidRegistry"

    const-string v1, "Trying to register provider, already registered"

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    sget-object v0, Lcom/fusepowered/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/fusepowered/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
