.class public Lcom/fusepowered/vast/model/VASTTracking;
.super Ljava/lang/Object;
.source "VASTTracking.java"


# instance fields
.field private consumed:Z

.field private event:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

.field private offset:Ljava/lang/String;

.field private offsetRelative:Z

.field private parsedOffset:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->event:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public getParsedOffset()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->parsedOffset:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->consumed:Z

    return v0
.end method

.method public isOffsetRelative()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->offsetRelative:Z

    return v0
.end method

.method public setConsumed(Z)V
    .locals 0
    .param p1, "consumed"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/fusepowered/vast/model/VASTTracking;->consumed:Z

    .line 62
    return-void
.end method

.method public setEvent(Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;)V
    .locals 0
    .param p1, "event"    # Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTTracking;->event:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    .line 34
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 3
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTTracking;->offset:Ljava/lang/String;

    .line 39
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->parsedOffset:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->offsetRelative:Z

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/vast/util/Assets;->parseOffset(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/vast/model/VASTTracking;->parsedOffset:J

    .line 44
    iput-boolean v2, p0, Lcom/fusepowered/vast/model/VASTTracking;->offsetRelative:Z

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fusepowered/vast/model/VASTTracking;->value:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/vast/model/VASTTracking;->event:Lcom/fusepowered/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/vast/model/VASTTracking;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/vast/model/VASTTracking;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
