.class public Lcom/fusepowered/m2/common/event/Event$Builder;
.super Lcom/fusepowered/m2/common/event/BaseEvent$Builder;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/common/event/BaseEvent$Name;Lcom/fusepowered/m2/common/event/BaseEvent$Category;D)V
    .locals 7
    .param p1, "name"    # Lcom/fusepowered/m2/common/event/BaseEvent$Name;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Lcom/fusepowered/m2/common/event/BaseEvent$Category;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "samplingRate"    # D

    .prologue
    .line 15
    sget-object v1, Lcom/fusepowered/m2/common/event/BaseEvent$ScribeCategory;->EXCHANGE_CLIENT_EVENT:Lcom/fusepowered/m2/common/event/BaseEvent$ScribeCategory;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/common/event/BaseEvent$Builder;-><init>(Lcom/fusepowered/m2/common/event/BaseEvent$ScribeCategory;Lcom/fusepowered/m2/common/event/BaseEvent$Name;Lcom/fusepowered/m2/common/event/BaseEvent$Category;D)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/fusepowered/m2/common/event/BaseEvent;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fusepowered/m2/common/event/Event$Builder;->build()Lcom/fusepowered/m2/common/event/Event;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/fusepowered/m2/common/event/Event;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/fusepowered/m2/common/event/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/m2/common/event/Event;-><init>(Lcom/fusepowered/m2/common/event/Event$Builder;Lcom/fusepowered/m2/common/event/Event$1;)V

    return-object v0
.end method
