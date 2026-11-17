.class public Lcom/fusepowered/FuseNativeBridge;
.super Ljava/lang/Object;


# instance fields
.field private handler:Lcom/fusepowered/BridgeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FuseCommonCore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/BridgeHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/FuseNativeBridge;->handler:Lcom/fusepowered/BridgeHandler;

    invoke-direct {p0}, Lcom/fusepowered/FuseNativeBridge;->initBridge()V

    return-void
.end method

.method private native initBridge()V
.end method


# virtual methods
.method public dataCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/FuseNativeBridge;->handler:Lcom/fusepowered/BridgeHandler;

    invoke-interface {v0, p1}, Lcom/fusepowered/BridgeHandler;->genericCallData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native disposeBridge()V
.end method

.method public initCore()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/fusepowered/FuseNativeBridge;->startServer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/FuseNativeBridge;->handler:Lcom/fusepowered/BridgeHandler;

    invoke-interface {v1, v0}, Lcom/fusepowered/BridgeHandler;->setEnv(Ljava/lang/String;)V

    return-object v0
.end method

.method public paramCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/FuseNativeBridge;->handler:Lcom/fusepowered/BridgeHandler;

    invoke-interface {v0, p1, p2}, Lcom/fusepowered/BridgeHandler;->genericCallParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native startServer()Ljava/lang/String;
.end method
