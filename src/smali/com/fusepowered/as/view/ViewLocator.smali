.class public Lcom/fusepowered/as/view/ViewLocator;
.super Ljava/lang/Object;
.source "ViewLocator.java"


# static fields
.field private static instance:Lcom/fusepowered/as/view/ViewLocator;

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fusepowered/as/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fusepowered/as/view/ViewLocator;->monitor:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/fusepowered/as/view/ViewLocator;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/fusepowered/as/view/ViewLocator;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/fusepowered/as/view/ViewLocator;->instance:Lcom/fusepowered/as/view/ViewLocator;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/fusepowered/as/view/ViewLocator;

    invoke-direct {v0}, Lcom/fusepowered/as/view/ViewLocator;-><init>()V

    sput-object v0, Lcom/fusepowered/as/view/ViewLocator;->instance:Lcom/fusepowered/as/view/ViewLocator;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/fusepowered/as/view/ViewLocator;->instance:Lcom/fusepowered/as/view/ViewLocator;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    return-void
.end method

.method public locateView(Ljava/lang/String;)Lcom/fusepowered/as/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/view/View;

    return-object v0
.end method

.method public registerView(Ljava/lang/String;Lcom/fusepowered/as/view/View;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public unregisterView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/fusepowered/as/view/ViewLocator;->viewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method
