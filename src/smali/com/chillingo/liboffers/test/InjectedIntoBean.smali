.class public Lcom/chillingo/liboffers/test/InjectedIntoBean;
.super Ljava/lang/Object;
.source "InjectedIntoBean.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field public injectedBean:Lcom/chillingo/liboffers/test/InjectedBean;
    .annotation build Lcom/googlecode/androidannotations/annotations/Bean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
