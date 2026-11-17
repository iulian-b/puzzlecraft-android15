.class public Lcom/fusepowered/as/view/vastplayer/PlayableAd;
.super Ljava/lang/Object;
.source "PlayableAd.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fusepowered/as/view/vastplayer/PlayableAd;",
        ">;"
    }
.end annotation


# instance fields
.field private inlineAd:Lcom/fusepowered/as/model/vast/InLine;

.field private linearCreatives:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fusepowered/as/model/vast/LinearCreative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/as/model/vast/InLine;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->linearCreatives:Ljava/util/LinkedList;

    .line 26
    iput-object p1, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->inlineAd:Lcom/fusepowered/as/model/vast/InLine;

    .line 28
    invoke-direct {p0}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->buildLinearCreativesToShow()V

    .line 29
    return-void
.end method

.method private buildLinearCreativesToShow()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->inlineAd:Lcom/fusepowered/as/model/vast/InLine;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/InLine;->getCreatives()Lcom/fusepowered/as/model/vast/Creatives;

    move-result-object v0

    const-class v1, Lcom/fusepowered/as/model/vast/LinearCreative;

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/VASTUtils;->normalizeSequenceEnabled(Ljava/util/TreeSet;Ljava/lang/Class;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->linearCreatives:Ljava/util/LinkedList;

    .line 36
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->linearCreatives:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fusepowered/as/view/vastplayer/PlayableAd;)I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->inlineAd:Lcom/fusepowered/as/model/vast/InLine;

    invoke-virtual {p1}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->getInlineAd()Lcom/fusepowered/as/model/vast/InLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/vast/InLine;->compareTo(Lcom/fusepowered/as/model/vast/Ad;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/fusepowered/as/view/vastplayer/PlayableAd;

    invoke-virtual {p0, p1}, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->compareTo(Lcom/fusepowered/as/view/vastplayer/PlayableAd;)I

    move-result v0

    return v0
.end method

.method public getInlineAd()Lcom/fusepowered/as/model/vast/InLine;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->inlineAd:Lcom/fusepowered/as/model/vast/InLine;

    return-object v0
.end method

.method public getLinearCreatives()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fusepowered/as/model/vast/LinearCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fusepowered/as/view/vastplayer/PlayableAd;->linearCreatives:Ljava/util/LinkedList;

    return-object v0
.end method
