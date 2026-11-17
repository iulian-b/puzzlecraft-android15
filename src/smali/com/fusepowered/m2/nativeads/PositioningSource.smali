.class interface abstract Lcom/fusepowered/m2/nativeads/PositioningSource;
.super Ljava/lang/Object;
.source "PositioningSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
    }
.end annotation


# virtual methods
.method public abstract loadPositions(Ljava/lang/String;Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/nativeads/PositioningSource$PositioningListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
