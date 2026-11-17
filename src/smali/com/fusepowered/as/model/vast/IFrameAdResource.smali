.class public final Lcom/fusepowered/as/model/vast/IFrameAdResource;
.super Lcom/fusepowered/as/model/vast/AdResource;
.source "IFrameAdResource.java"


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "IFrameResource"

.field private static final serialVersionUID:J = -0x1efdc20eb244b958L


# instance fields
.field private iFrameUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/fusepowered/as/model/vast/AdResource;-><init>()V

    return-void
.end method


# virtual methods
.method public getiFrameUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/IFrameAdResource;->iFrameUri:Ljava/lang/String;

    return-object v0
.end method

.method public setiFrameUri(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/model/vast/IFrameAdResource;->iFrameUri:Ljava/lang/String;

    .line 30
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
