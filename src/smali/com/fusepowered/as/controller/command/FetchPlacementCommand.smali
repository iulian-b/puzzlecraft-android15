.class public Lcom/fusepowered/as/controller/command/FetchPlacementCommand;
.super Ljava/lang/Object;
.source "FetchPlacementCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private context:Landroid/content/Context;

.field private fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

.field private id:Ljava/lang/String;

.field private keyWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/as/controller/listener/FetchPlacementListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->id:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->keyWords:Ljava/util/List;

    .line 26
    iput-object p4, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    .line 29
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/fusepowered/as/proxy/PlacementProxy;

    invoke-direct {v0}, Lcom/fusepowered/as/proxy/PlacementProxy;-><init>()V

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->fetchPlacementListener:Lcom/fusepowered/as/controller/listener/FetchPlacementListener;

    iget-object v4, p0, Lcom/fusepowered/as/controller/command/FetchPlacementCommand;->keyWords:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fusepowered/as/proxy/PlacementProxy;->fetchPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/as/controller/listener/FetchPlacementListener;Ljava/util/List;)V

    .line 34
    return-void
.end method
