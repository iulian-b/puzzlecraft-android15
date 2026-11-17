.class public Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;
.super Ljava/lang/Object;
.source "VastVideoDownloadTaskFactory.java"


# static fields
.field private static instance:Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;
    .locals 1
    .param p0, "vastVideoDownloadTaskListener"    # Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    .prologue
    .line 14
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;->internalCreate(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastVideoDownloadTaskFactory;

    .line 11
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;
    .locals 1
    .param p1, "vastVideoDownloadTaskListener"    # Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;

    .prologue
    .line 18
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask;-><init>(Lcom/fusepowered/m2/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)V

    return-object v0
.end method
