.class final Lcom/fusepowered/util/XMLParser$3;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/util/XMLParser;->parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 92
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->adConfigReceived()V

    .line 93
    return-void
.end method
