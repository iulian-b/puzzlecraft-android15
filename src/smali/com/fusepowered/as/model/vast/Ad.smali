.class public abstract Lcom/fusepowered/as/model/vast/Ad;
.super Ljava/lang/Object;
.source "Ad.java"

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
        "Lcom/fusepowered/as/model/vast/Ad;",
        ">;",
        "Ljava/io/Serializable;",
        "Lcom/fusepowered/as/model/vast/SequenceEnabled;"
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "Ad"

.field private static final serialVersionUID:J = -0x61617fa8a6eecc5aL


# instance fields
.field protected id:Ljava/lang/String;

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
.method public compareTo(Lcom/fusepowered/as/model/vast/Ad;)I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p1, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 51
    const/4 v0, -0x1

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/fusepowered/as/model/vast/Ad;

    invoke-virtual {p0, p1}, Lcom/fusepowered/as/model/vast/Ad;->compareTo(Lcom/fusepowered/as/model/vast/Ad;)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Ad;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSequencePosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fusepowered/as/model/vast/Ad;->sequencePosition:Ljava/lang/Integer;

    return-object v0
.end method
