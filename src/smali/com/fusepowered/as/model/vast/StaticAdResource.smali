.class public final Lcom/fusepowered/as/model/vast/StaticAdResource;
.super Lcom/fusepowered/as/model/vast/AdResource;
.source "StaticAdResource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "StaticResource"

.field private static final serialVersionUID:J = 0xc6e640000b66cf9L


# instance fields
.field private mimeType:Ljava/lang/String;

.field private resourceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/AdResource;-><init>()V

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/StaticAdResource;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/StaticAdResource;->resourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fusepowered/as/model/vast/StaticAdResource;->mimeType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setResourceUri(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/StaticAdResource;->resourceUri:Ljava/lang/String;

    .line 32
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
