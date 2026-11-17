.class public Lcom/fusepowered/nx/network/volley/toolbox/NoCache;
.super Ljava/lang/Object;
.source "NoCache.java"

# interfaces
.implements Lcom/fusepowered/nx/network/volley/Cache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/fusepowered/nx/network/volley/Cache$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 41
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/fusepowered/nx/network/volley/Cache$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/fusepowered/nx/network/volley/Cache$Entry;

    .prologue
    .line 37
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method
