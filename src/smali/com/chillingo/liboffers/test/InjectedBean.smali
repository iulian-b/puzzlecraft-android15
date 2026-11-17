.class public Lcom/chillingo/liboffers/test/InjectedBean;
.super Ljava/lang/Object;
.source "InjectedBean.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "This is a test class for IoC memory management tests to ensure that the memory is released correctly when the bean is disposed of."

    iput-object v0, p0, Lcom/chillingo/liboffers/test/InjectedBean;->message:Ljava/lang/String;

    .line 12
    return-void
.end method
