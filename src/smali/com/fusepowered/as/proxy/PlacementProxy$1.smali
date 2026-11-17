.class Lcom/fusepowered/as/proxy/PlacementProxy$1;
.super Ljava/lang/Object;
.source "PlacementProxy.java"

# interfaces
.implements Lcom/fusepowered/as/http/HttpTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/proxy/PlacementProxy;->fetchPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/proxy/PlacementProxy;

.field final synthetic val$fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/proxy/PlacementProxy;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->this$0:Lcom/fusepowered/as/proxy/PlacementProxy;

    iput-object p2, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->val$fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    iput-object p3, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpTaskFailure(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->val$fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    const-string v1, "Could not fetch placement. URL %s responded with %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/FetchPlacementListener;->onPlacementError(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onHttpTaskSuccess(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lcom/fusepowered/as/proxy/PlacementProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Headers found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-class v0, Lcom/fusepowered/as/proxy/PlacementProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->val$fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    new-instance v1, Lcom/fusepowered/as/model/Placement;

    iget-object v2, p0, Lcom/fusepowered/as/proxy/PlacementProxy$1;->val$id:Ljava/lang/String;

    invoke-direct {v1, v2, p3, p4}, Lcom/fusepowered/as/model/Placement;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/FetchPlacementListener;->onPlacementResult(Lcom/fusepowered/as/model/Placement;)V

    .line 32
    return-void
.end method
