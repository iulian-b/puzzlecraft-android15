.class public final Lcom/fusepowered/as/model/vast/Vpaid;
.super Ljava/lang/Object;
.source "Vpaid.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad:Lcom/fusepowered/as/model/vast/InLine;

.field private creative:Lcom/fusepowered/as/model/vast/LinearCreative;

.field private mediaFile:Lcom/fusepowered/as/model/vast/MediaFile;


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/model/vast/Ad;Lcom/fusepowered/as/model/vast/Creative;Lcom/fusepowered/as/model/vast/MediaFile;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    instance-of v0, p1, Lcom/fusepowered/as/model/vast/InLine;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/fusepowered/as/model/vast/LinearCreative;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "could not create vpaid.  creative or mediaFile was invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    check-cast p1, Lcom/fusepowered/as/model/vast/InLine;

    iput-object p1, p0, Lcom/fusepowered/as/model/vast/Vpaid;->ad:Lcom/fusepowered/as/model/vast/InLine;

    .line 34
    check-cast p2, Lcom/fusepowered/as/model/vast/LinearCreative;

    iput-object p2, p0, Lcom/fusepowered/as/model/vast/Vpaid;->creative:Lcom/fusepowered/as/model/vast/LinearCreative;

    .line 35
    iput-object p3, p0, Lcom/fusepowered/as/model/vast/Vpaid;->mediaFile:Lcom/fusepowered/as/model/vast/MediaFile;

    .line 37
    return-void
.end method


# virtual methods
.method public getAd()Lcom/fusepowered/as/model/vast/InLine;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Vpaid;->ad:Lcom/fusepowered/as/model/vast/InLine;

    return-object v0
.end method

.method public getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Vpaid;->creative:Lcom/fusepowered/as/model/vast/LinearCreative;

    return-object v0
.end method

.method public getMediaFile()Lcom/fusepowered/as/model/vast/MediaFile;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Vpaid;->mediaFile:Lcom/fusepowered/as/model/vast/MediaFile;

    return-object v0
.end method
