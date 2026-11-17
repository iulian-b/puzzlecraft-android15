.class public abstract Lcom/fusepowered/as/model/vast/Creative;
.super Ljava/lang/Object;
.source "Creative.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Lcom/fusepowered/as/model/vast/SequenceEnabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fusepowered/as/model/vast/Creative;",
        ">;",
        "Ljava/io/Serializable;",
        "Lcom/fusepowered/as/model/vast/SequenceEnabled;"
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "Creative"

.field private static final serialVersionUID:J = -0x777cade552be9be9L


# instance fields
.field protected adId:Ljava/lang/String;

.field protected creativeId:Ljava/lang/String;

.field protected sequencePosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fusepowered/as/model/vast/Creative;)I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p1, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 53
    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/fusepowered/as/model/vast/Creative;

    invoke-virtual {p0, p1}, Lcom/fusepowered/as/model/vast/Creative;->compareTo(Lcom/fusepowered/as/model/vast/Creative;)I

    move-result v0

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSequencePosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Creative;->sequencePosition:Ljava/lang/Integer;

    return-object v0
.end method
