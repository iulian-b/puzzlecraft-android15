.class public interface abstract Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/puzzlecraft/android/ajagplay/InAppBilling/v3/IabResult;",
            ">;)V"
        }
    .end annotation
.end method
