.class public Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;
.super Ljava/lang/Object;
.source "ProviderListenerLocator.java"


# static fields
.field private static final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/controller/listener/ProviderListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->listeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProviderListener(Ljava/lang/String;)Lcom/fusepowered/as/controller/listener/ProviderListener;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/controller/listener/ProviderListener;

    return-object v0
.end method

.method public static register(Ljava/lang/String;Lcom/fusepowered/as/controller/listener/ProviderListener;)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fusepowered/as/controller/listener/ProviderListenerLocator;->listeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method
