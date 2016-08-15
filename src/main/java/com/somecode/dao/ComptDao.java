package com.somecode.dao;

import com.somecode.domain.*;

import java.util.List;

/**
 * Created by alexc_000 on 2016-06-24.
 */
public interface ComptDao {
    List<ComptSupplInfo> getComptsSupplInfoByPacketId(long packetId);

    List<ComptSupplInfo> getAllComptsSupplInfo();

    List<PacketInfo> getAllPackets();
    Long getPacketStateId(long packetId);

    List<Long> addPackets(List<PacketParams> packetParamsList);
    List<State> getAllStates();

    List<ComptInfo> getComptsByPacketId(long packetId);

    List<ComptInfo> getAllCompts();

    List<Long> updateCompts(List<ComptParams> comptParamsList);

    List<Long> updatePackets(List<PacketParams> updatedPackets);

    List<Long> deleteCompts(List<Long> idsToRemove);

    List<Long> deletePackets(List<Long> packetIdsToDelete);

    List<Long> addCompts(long packetId, List<ComptParams> comptParamsList);

    List<ComboData> getAllComboData();
}
