.class public Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
.super Lcom/fusepowered/m2/mobileads/VastTracker;
.source "VastAbsoluteProgressTracker.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m2/mobileads/VastTracker;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mTrackingMilliseconds:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "trackingUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trackingMilliseconds"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 20
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/fusepowered/m2/common/Preconditions;->checkArgument(Z)V

    .line 21
    iput p2, p0, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    .line 22
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;)I
    .locals 3
    .param p1, "other"    # Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->getTrackingMilliseconds()I

    move-result v1

    .line 31
    .local v1, "you":I
    invoke-virtual {p0}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->getTrackingMilliseconds()I

    move-result v0

    .line 33
    .local v0, "me":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;)I

    move-result v0

    return v0
.end method

.method public getTrackingMilliseconds()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%dms: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fusepowered/m2/mobileads/VastAbsoluteProgressTracker;->mTrackingUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
