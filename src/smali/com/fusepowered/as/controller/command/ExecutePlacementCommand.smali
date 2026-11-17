.class public Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;
.super Ljava/lang/Object;
.source "ExecutePlacementCommand.java"

# interfaces
.implements Lcom/fusepowered/as/controller/command/Command;


# instance fields
.field private config:Lcom/fusepowered/as/AerServConfig;

.field private executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

.field private saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

.field private type:Lcom/fusepowered/as/AerServAdType;

.field private viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;)V
    .locals 6

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;-><init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->config:Lcom/fusepowered/as/AerServConfig;

    .line 24
    iput-object p2, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->type:Lcom/fusepowered/as/AerServAdType;

    .line 25
    iput-object p3, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    .line 26
    iput-object p5, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->viewId:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExecutePlacementCommand constructed with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Executing ExecutePlacementCommand"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/fusepowered/as/controller/AdManager;

    iget-object v1, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->config:Lcom/fusepowered/as/AerServConfig;

    iget-object v2, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->type:Lcom/fusepowered/as/AerServAdType;

    iget-object v3, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->executePlacementListener:Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;

    iget-object v4, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->saveShowListener:Lcom/fusepowered/as/controller/listener/SaveShowListener;

    iget-object v5, p0, Lcom/fusepowered/as/controller/command/ExecutePlacementCommand;->viewId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/as/controller/AdManager;-><init>(Lcom/fusepowered/as/AerServConfig;Lcom/fusepowered/as/AerServAdType;Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;Lcom/fusepowered/as/controller/listener/SaveShowListener;Ljava/lang/String;)V

    .line 41
    return-void
.end method
